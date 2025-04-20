.DEFAULT_GOAL := usage

# user and repo
USER        = $$(whoami)
CURRENT_DIR = $(notdir $(shell pwd))

# terminal colours
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
RESET   = \033[0m

define ANNOUNCE
echo "$(2)$(1)${NC}"
endef

.PHONY: env
env:
	@env | sort

.PHONY: present
present:
	command -v slides || brew install slides
	slides PRESENTATION.md

.PHONY: env-diff-command
env-diff-command:
	@echo "type in:\n\t${GREEN}diff <(env | sort) <(make env)${RESET}"

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${RESET} Welcome to ${RED}${CURRENT_DIR}${RESET}"
	@echo
	@echo "Getting started"
	@echo
	@echo "${YELLOW}make${RESET}                     this handy usage guide"
	@echo
	@echo "${YELLOW}make present${RESET}             present slide show PRESENTATION.md"
	@echo
	@echo "${YELLOW}make env${RESET}                 display ENV under Make"
	@echo "${YELLOW}make env-diff-command${RESET}    command to comapare ENV"
	@echo
