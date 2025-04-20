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

.PHONY: setup-co-authors
setup-co-authors:
	(@command -v git-mob &> /dev/null && git-mob --version &> /dev/null) || \
		(npm install --global git-mob && asdf reshim)
	@echo "${GREEN}✅ git-mob installed${RESET}"
	@git config --global git-mob-config.github-fetch true
	git mob --list

# TODO: check that EDITOR is set
.PHONY: setup-co-authors-manually
setup-co-authors-manually:
	echo "✨\n\nCo-authored-by: Michael Milewski <saramic@gmail.com>" >> \
		.git/.gitmessage && \
		${EDITOR} .git/.gitmessage && \
		git config commit.template .git/.gitmessage

# TODO: make sure dependencies like ffmpeg are installed via brew
.PHONY: setup-lolcommits
setup-lolcommits:
	# brew install imagemagick ffmpeg
	gem install lolcommits
	pushd .. && lolcommits --enable --delay 1 --animate 6 --fork && popd

.PHONY: disable-lolcommits
disable-lolcommits:
	pushd .. && lolcommits --disable && popd

.PHONY: last-lol
last-lol:
	stat -f "%m%t%Sm %N" ~/.lolcommits/**/*.gif | \
		sort -rn | head -1 | cut -f2- | \
		sed "s/.*20[0-9][0-9] //" | \
		sed "s/^/<img style=\"width:70%;\" src=\"/" | \
		sed "s/.*/&\">/" > \
		${HOME}/temp_single_lolcommitters.html && \
		open ${HOME}/temp_single_lolcommitters.html

.PHONY: all-the-lols
all-the-lols:
	ls -t ~/.lolcommits/**/*.gif | \
		sed "s/^/<img src=\"/" | \
		sed "s/.*/&\">/" > \
		${HOME}/temp_lolcommitters.html && \
		open ${HOME}/temp_lolcommitters.html

.PHONY: clean
clean:
	npm uninstall --global git-mob
	asdf reshim

.PHONY: usage
usage:
	@echo
	@echo "Hi ${GREEN}${USER}!${RESET} Welcome to ${RED}${CURRENT_DIR}${RESET}"
	@echo
	@echo "${YELLOW}make setup-co-authors${RESET}           setup co-authors npm"
	@echo "${YELLOW}make setup-co-authors-manually${RESET}  setup co-authored-by manually"
	@echo "${YELLOW}make setup-lolcommit${RESET}            setup lolcommit"
	@echo "${YELLOW}make disable-lolcommit${RESET}          disable lolcommit"
	@echo "${YELLOW}make last-lol${RESET}                   last LOL"
	@echo "${YELLOW}make all-the-lols${RESET}               all the LOLs"
	@echo
	@echo "${YELLOW}make clean${RESET}                      uninstall git-mob"
	@echo
