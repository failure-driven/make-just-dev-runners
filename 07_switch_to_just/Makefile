.DEFAULT_GOAL := switch-to-just

# terminal colours
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
RESET   = \033[0m

define ANNOUNCE
echo "$(2)$(1)${NC}"
endef

.PHONY: switch-to-just
switch-to-just:
	@brew --version >> /dev/null || \
		{ echo "${RED}❌ Couldn't detect Homebrew${NC}"; \
		echo "\n\t${YELLOW}maybe try: ${GREEN}make just-linux${NC}\n"; exit 1; }
	@$(call ANNOUNCE,"✅ homebrew ready to brew bundle",${GREEN})
	@bash -c "command -v just" >> /dev/null || \
		{ echo "let's install just"; brew install just; }
	@just --version >> /dev/null && \
		$(call ANNOUNCE,"✅ just",${GREEN})
	@just
	@echo "\n\t${YELLOW}type ${GREEN}just${YELLOW} to run commands\n"

.PHONY: just-linux
just-linux:
	sudo apt install build-essential
	sudo apt install cargo
	cargo install just
	export PATH=$$HOME/.cargo/bin:$$PATH
	just --shell bash
