# init.lua

## Keybindings

### General

Ctrl w (h/j/k/l/s/v) : the usual window suspects

### Netrw

%: Create new file
d: Create new dir

### Normal mode

SPC pv: Open Netrw
SPC u: Undo tree
SPC ff: Find files
SPC fg: Live grep
SPC fb: Find in buffers
SPC fh: Help tags
Cntl + p: Find in project (git search)

## Packer

Packer is the package manager you chose. It's lovely configuraions live in packer.lua. To have to run and find all the deps it needs, run
`:PackerSync`.

Generally speaking, when you pick a plugin you are going to dump whatever its install line is into packer.lua, and add a file for it in after/plugin that will contain its configuration / keymaps.
