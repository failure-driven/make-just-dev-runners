.DEFAULT_GOAL := usage

# user and repo
USER        = $$(whoami)
CURRENT_DIR = $(notdir $(shell pwd))

# terminal colours
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
NC      = \033[0m

.session.key:
	ruby -e 'require "securerandom"; \
		File.open(".session.key", "w") {|f| \
			f.write(SecureRandom.hex(32)) }'

.PHONY: install
install:
	asdf install
	bundle

.PHONY: setup
setup: install .session.key

.PHONY: sidekiq-web
sidekiq-web:
	bundle exec rackup bin/sidekiq_web_config.ru

.PHONY: view-sidekiq-web
view-sidekiq-web:
	open http://localhost:9292

.PHONY: kill-port-9292
kill-port-9292:
	lsof -i :9292 | grep IPv4 | sed 's/  */:/g' | cut -d ":" -f 2 | xargs kill -9

.PHONY: clean
clean:
	rm .session.key

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${NC} Welcome to ${RED}${CURRENT_DIR}${NC}"
	@echo
	@echo "${YELLOW}make${NC}                   show this usage menu"
	@echo
	@echo "${YELLOW}make install${NC}           install ruby & gems"
	@echo "${YELLOW}make setup${NC}             setup all the things"
	@echo
	@echo "${YELLOW}make sidekiq-web${NC}       run sidekiq web"
	@echo "${YELLOW}make view-sidekiq-web${NC}  view sidekiq web"
	@echo "${YELLOW}make kill-port-9292${NC}    kill any process on PORT 9292"
	@echo
	@echo "${YELLOW}make clean${NC}             clean up"
	@echo
