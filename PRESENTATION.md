# Make vs Justfile vs Mise vs xc

_Up your Developer Experience (DX) on your local machine_

- Michael Milewski
- @saramic github/𝕏
- https://failure-driven.com
- https://www.linkedin.com/in/michael-milewski/
- https://sessionize.com/michael-milewski/

---

## Makefile backgrounder

1. `make` and `Makefile` – Compile **C/C++** programs
1. Always available (_almost_)
1. Comeback in "3 Musketeers" pattern
    - https://3musketeers.io/guide/make.html
1. It's a 3rd of the "3 Musketeers" pattern
1. 🅳 🅸 🅰 🅲 – 🅳 eveloper 🅸 nfrastructure 🅰 s 🅲 ode

**DEMO**

```bash
make
```

_press CTRL-e to execute_

---

## Makefile

- wow it printed something on the screen 👏
- a basic C project: `./01_make_hello_world/`
- Dive in:
  - [ ] tasks,
  - [ ] @command,
  - [ ] tabs,
  - [ ] lazy evaluation (`.Phony`),
  - [ ] `$$`,
  - [ ] different environment (`make env` and `make env-diff-command`)

---

## Make targets
- Standard
    `all`, `build`, `link`, `clean`, `install`, `uninstall`, `rebuild`
- testing and quality
    `test`, `check`, `lint`, `format`
- utility
    `help`, `version`, `run`, `env`, `deps`, `docker`
- packaging and distribution
    `dist`, `release`, `publish`

---

## Why do I care?

- check them out in The Gems
```bash
find ~/.asdf/installs/ruby/3.4.2/lib/ruby/gems -name Makefile
```

_press CTRL-e to execute_

---

## Standard Linux package install

```shell
tar -zxvf package-vXXX.tar.gz
cd package-vXXX
./configure
make
make install
```

---

## Makefile to document your setup

- rails project         - `cd 02_run_a_command`
- ruby project          - `cd 03_file_create`
- conditional setup     - `cd 04_if_not_exist`
- parameters and fail   - `cd 05_fail`
- include Makefiles     - `cd 06_include`

---

## Makefile Examples

- https://github.com/failure-driven/experimental-methods-in-sidekiq/blob/main/Makefile

## Makefile everywhere

- available everywhere (_almost_) just like `vi`, `awk`, `sed`, `grep`, etc

```shell
docker run -it --rm alpine /bin/ash
which sed && which awk && which grep

# vi

apk add --no-cache make
make --version

apk add --no-cache just
just --version
```

---

## Makefile

- good way to document scripts per repository

---

## Just

- `just` is a handy way to save and run project-specific commands.
- https://just.systems/man/en/
    - https://github.com/casey/just

---

## Just examples

- switch to just        = `cd 07_switch_to_just`

---

## Just quirks

- not everywhere

```yaml
# GitHub actions
name: Continous Integration

jobs:
  thing:
    name: The thing I want to run

    steps:
      - name: Checkout code
        uses: actions/checkout@v4

      - name: Setup Just
        uses: extractions/setup-just@v2
```

---

## Just quirks cont.

```ruby
# just file for managing this repo

#   - https://github.com/casey/just
#   - https://just.systems/man/en/

# use bash which is required for GHActions. To overrid locally to make things
# like colors work with most Mac OS you may need following overrides:
#       alias just="just --shell zsh"
# or always call
#       just --shell zsh
set shell := ["bash", "-uc"]
```

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

             █
             █
             █
             █
    ███████████████████
      ▜██████▛  ▟▙      🅳 eveloper
       ▜████▛  ▟██▙     🅸 nfrastructure
        ▜██▛  ▟████▙    🅰 s
         ▜▛  ▟██████▙   🅲 ode
    ███████████████████
             █
             █
             █
             █
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
