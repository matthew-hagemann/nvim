# init.lua

## Keybindings

### General

- `leader` w (h/j/k/l/s/v): The usual window suspects

### Netrw

- `%`: Create new file
- `d`: Create new directory
- `Enter`: Open selected file/directory
- `-`: Go up one directory level
- `t`: Open in new tab
- `v`: Open in vertical split
- `s`: Open in horizontal split
- `R`: Rename file/directory
- `D`: Delete file/directory (use with caution)
- `x`: Open with default system application
- `i`: Change listing style
- `I`: Toggle hidden files
- `q`: Close Netrw window
- `p`: Preview file
- `m`: Move file/directory
- `c`: Copy file/directory
- `yy`: Yank file path
- `.`: Sort files

### Normal Mode

- `leader` pv: Open Netrw
- `leader` u: Undo tree
- `leader` ff: Find files
- `leader` fg: Live grep
- `leader` fb: Find in buffers
- `leader` fh: Help tags
- `Ctrl + p`: Find in project (git search)

### LSP (Language Server Protocol)

These keybindings are defined in `lsp.lua` for enhanced development workflow with LSP features:

- `gd`: Go to definition
- `K`: Show hover information
- `leader` vws: Search workspace symbols
- `leader` vd: Open diagnostics float
- `[d`: Go to next diagnostic
- `]d`: Go to previous diagnostic
- `leader` vca: Show available code actions
- `leader` vrr: Show references for the symbol under the cursor
- `leader` vrn: Rename the symbol under the cursor
- `Ctrl-h` (in Insert mode): Show signature help

## Packer

Packer is the package manager of choice. Its configurations reside in `packer.lua`. To run and find all the necessary dependencies, execute `:PackerSync`.

When adding a plugin, insert its installation line into `packer.lua`, and create a configuration/keymap file in `after/plugin`.

