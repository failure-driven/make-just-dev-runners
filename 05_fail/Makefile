PROJECT := dojo

default: usage

# terminal colors
RED     = \033[0;31m
GREEN   = \033[0;32m
YELLOW  = \033[0;33m
BLUE    = \033[0;34m
MAGENTA = \033[0;35m
BOLD    = \033[1m
RESET   = \033[0m

.PHONY: usage
usage:
	bin/makefile/usage

.PHONY: say-it
say-it:
	bin/makefile/say-it $(or $(msg),$(error Must specify msg: "make new_ruby_dojo msg=hello world"))

.PHONY: demo
demo:
	make say-it msg="hello world"
