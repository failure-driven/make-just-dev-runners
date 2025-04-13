# Make vs Justfile vs Mise vs xc

Up your Developer Experience (DX) on your local machine

- Michael Milewski
- @saramic github/𝕏
- https://failure-driven.com
- https://www.linkedin.com/in/michael-milewski/
- https://sessionize.com/michael-milewski/

---

## Makefile backgrounder

1. Always available
1. Steps to install, run, demo, cleanup, reset, etc
1. It's a 3rd of the "3 Musketeers" pattern
    - https://3musketeers.io/guide/make.html

**DEMO**

```bash
make
```

_press CTRL-e to execute_

---

## Makefile
- make & C
- typical make target: build, link, clean etc, install, run, demo, cleanup, reset, etc
- check them in the Gems
    ```bash
    find ~/.asdf/installs/ruby/3.4.2/lib/ruby/gems -name Makefile
    ```
- last I remember running was installing Perl CPAN modules
    ```bash
    tar -zxvf package.tar.gz
    cat INSTALL
    ./configure
    make
    make install
    ```

---
## Makefile
- quiryky - tabs, lazy evaluation (.Phony), $$, different environment
- available everywhere? [ ] alpine install? with vi? awk, sed, grep etc
- good way to document scripts per repository
- common Rails related scripts: install, steup, test, lint, lint-fix, dev, run,deploy
- simplify README - no need to cut and paste
- autocompletion [ ] free?
- **Dificulties**
    - input
    - if else logic
    - calling other tasks based on fork logic
- extend with Bash - mostly to keep in the nothing to install
- **Examples**
    - fail in $(fail)
    - input
    - inherit,extend make files

---

## Makefile Exapmples

- https://github.com/failure-driven/experimental-methods-in-sidekiq/blob/main/Makefile
- tmux vs overmind

---

## Justfile backgrounder
- built in rust
- solve similar problem
- without the quirks - no tabs, any lang, auto document -l
- call in any lang
- call other takss
- bad for lazy file create
- not on every system - brew install subtask
    - a bit more complex on Windows WSL - using cargo
    - issue with shell in Gihubactions
    - not in Github codespaces
- Make to bootstap just
- make is my default
- just is nicer to use

---

## Mise new kid on the block

- try
- scripts
- github actions, codesapces, windows WSL
- does away with ASDF

---

## xc run your documentation

- run your documentation
- github actions, codesapces, windows WSL

---

## Other tools

npm
Rakefile

---

## Why script

DevOps pyramid

- manual (playbooks)
- scripts (bash)
- declarative
- generators
- abstractions
- custom stacks

---

## Dev setup analog

DevOps pyramid

- manual (playbooks) - cut & past and click ops
- scripts (bash) - Make/bash
- declarative - Brew/asdf
- generators
- abstractions
- custom stacks

I boot strap my environment

my suggestion for push for DIAC

---

## In Review

- ...

---

## Thank You

- Michael Milewski
- @saramic github/𝕏
- https://failure-driven.com
- https://www.linkedin.com/in/michael-milewski/
- https://sessionize.com/michael-milewski/
