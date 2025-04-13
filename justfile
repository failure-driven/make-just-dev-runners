# user and repo
user        := `whoami`
current_dir := `basename $( pwd )`

# Colors
RED     := "\\u001b[31m"
GREEN   := "\\u001b[32m"
YELLOW  := "\\u001b[33m"
RESET   := "\\u001b[0m"

_default:
    @echo "\nHi {{GREEN}}{{user}}!{{RESET}} Welcome to {{RED}}{{current_dir}}{{RESET}}\n"

    @just --list --unsorted

# presnt slide show PRESENTATION.md
present:
    # check if slides is present
    # otherwise brew install slides
    slides PRESENTATION.md
