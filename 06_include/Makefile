.DEFAULT_GOAL := usage

include ./sub_dir_a/Makefile
include ./sub_dir_b/Makefile

.PHONY: demo
demo:
	@echo "hello from the main Makefile"

.PHONY: show-make
show-make:
	find . -name Makefile | xargs cat

.PHONY: usage
usage:
	@echo
	@echo "make, make demo, make demo-A, make demo-B, make show-make"
	@echo
