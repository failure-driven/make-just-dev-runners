.DEFAULT_GOAL := switch-to-xc

# terminal colours
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
RESET   = \033[0m

define ANNOUNCE
echo "$(2)$(1)${NC}"
endef

.PHONY: switch-to-xc
switch-to-xc:
	@brew --version >> /dev/null || \
		{ echo "${RED}❌ Couldn't detect Homebrew${NC}"; exit 1; }
	@$(call ANNOUNCE,"✅ homebrew ready to brew bundle",${GREEN})
	@bash -c "command -v xc" >> /dev/null || \
		{ echo "let's install xc"; brew tap joerdav/xc; brew install xc; }
	@mise version >> /dev/null && \
		$(call ANNOUNCE,"✅ xc",${GREEN})
	@xc run
	@echo "\n\t${YELLOW}type ${GREEN}xc${YELLOW} to run commands\n"
