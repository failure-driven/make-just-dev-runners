PROJECT := dojo

default: usage

# user and repo
USER        = $$(whoami)
CURRENT_DIR = $(notdir $(shell pwd))

# terminal colors
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
BLUE    = \033[0;34m
MAGENTA = \033[0;35m
BOLD    = \033[1m
RESET   = \033[0m

.PHONY: setup_co_authors
setup_co_authors:
	@command -v git-mob &> /dev/null || \
		npm install --global git-mob
	@echo "${GREEN}✅ git-mob installed${RESET}"
	@git config --global git-mob-config.github-fetch true
	git mob --list

# TODO: check that EDITOR is set
.PHONY: setup_co_authors-manually
setup_co_authors-manually:
	echo "✨\n\nCo-authored-by: Michael Milewski <saramic@gmail.com>" >> \
		.git/.gitmessage && \
		${EDITOR} .git/.gitmessage && \
		git config commit.template .git/.gitmessage

# TODO: make sure dependencies like ffmpeg are installed via brew
.PHONY: setup_lolcommits
setup_lolcommits:
	# brew install imagemagick ffmpeg
	gem install lolcommits
	pushd .. && lolcommits --enable --delay 1 --animate 6 --fork && popd

.PHONY: disable_lolcommits
disable_lolcommits:
	pushd .. && lolcommits --disable && popd

.PHONY: last_lol
last_lol:
	stat -f "%m%t%Sm %N" ~/.lolcommits/**/*.gif | \
		sort -rn | head -1 | cut -f2- | \
		sed "s/.*20[0-9][0-9] //" | \
		sed "s/^/<img style=\"width:70%;\" src=\"/" | \
		sed "s/.*/&\">/" > \
		${HOME}/temp_single_lolcommitters.html && \
		open ${HOME}/temp_single_lolcommitters.html

.PHONY: all_the_lols
all_the_lols:
	ls -t ~/.lolcommits/**/*.gif | \
		sed "s/^/<img src=\"/" | \
		sed "s/.*/&\">/" > \
		${HOME}/temp_lolcommitters.html && \
		open ${HOME}/temp_lolcommitters.html

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${RESET} Welcome to ${RED}${CURRENT_DIR}${RESET}"
	@echo
	@echo "${YELLOW}make setup_co_authors${RESET}           setup co-authors npm"
	@echo "${YELLOW}make setup_co_authors-manually${RESET}  setup co-authored-by manually"
	@echo "${YELLOW}make setup_lolcommit${RESET}            setup lolcommit"
	@echo "${YELLOW}make disable_lolcommit${RESET}          disable lolcommit"
	@echo "${YELLOW}make last_lol${RESET}                   last LOL"
	@echo "${YELLOW}make all_the_lols${RESET}               all the LOLs"
	@echo
