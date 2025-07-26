# init.lua

Updated to work with nvim 0.11.2

## Installation

Assuming you were good and installed the dotfiles how I asked in the README above:

Install Packer:

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Run `:PackerSync` from inside nvim

You will need to see what lsp's are upset from there, glhf!

## Keybindings Reference

### Leader Key
- **Leader key**: `<space>`

### Core Navigation (Colemak Layout)
- **Basic movement**: `mnei` (replaces `hjkl`)
  - `m`: Left (h)
  - `n`: Down (j) 
  - `e`: Up (k)
  - `i`: Right (l)
- **Displaced keys**:
  - `l`: Enter insert mode (was `i`)
  - `L`: Insert at beginning of line (was `I`)
  - `h`: End of word (was `e`)
  - `H`: End of WORD (was `E`)
- **Text objects**: `l` acts as "inside" modifier for visual/operator modes

### Search and Movement
- **Search navigation**: 
  - `j`: Next search result (was `n`)
  - `J`: Previous search result (was `N`)
- **Centered scrolling**:
  - `<C-d>`: Half page down, centered
  - `<C-u>`: Half page up, centered
- **Jump list**:
  - `<leader>bn`: Jump forward (`<C-i>`)
  - `<leader>bp`: Jump backward (`<C-o>`)

### File Management
- **File explorer**: `<leader>pp` - Toggle Lexplore
- **Telescope**:
  - `<leader>ff`: Find files
  - `<leader>fg`: Live grep
  - `<leader>fb`: Buffers
  - `<leader>fh`: Help tags
  - `<C-p>`: Git files

### Window Management
- **Window navigation** (Colemak): `<leader>w[mnei]` for directional movement
- **Window actions**:
  - `<leader>ws`: Split horizontally
  - `<leader>wv`: Split vertically  
  - `<leader>wc`: Close window

### Tab Management
- `<leader>tn`: New tab
- `<leader>tt`: Next tab
- `<leader>tm`: Move tab (prompts for position)
- `<leader>tc`: Close tab
- `<leader>to`: Close all other tabs

### LSP (Language Server Protocol)
- **Navigation**:
  - `gd`: Go to definition
  - `K`: Hover documentation
- **Code actions**:
  - `<leader>ca`: Code actions
  - `<leader>cr`: Show references
  - `<leader>cn`: Rename symbol
  - `<leader>vws`: Workspace symbols
- **Diagnostics**:
  - `<leader>xd`: Open diagnostic float
  - `[d`: Next diagnostic
  - `]d`: Previous diagnostic
- **Completion** (Insert mode):
  - `<C-p>`: Previous item
  - `<C-n>`: Next item
  - `<CR>`: Confirm selection
  - `<C-Space>`: Trigger completion
  - `<C-h>`: Signature help

### Code Editing
- **Formatting**: 
  - `<leader>f`: LSP format
  - `<leader>cf`: Formatter.nvim format
- **Comments**: `<leader>c/` - Toggle comment (normal/visual)
- **Text manipulation**:
  - `<leader>p`: Paste without losing clipboard (visual mode)
  - `<leader>y`: Yank to system clipboard
  - `<leader>Y`: Yank line to system clipboard
  - `<leader>s`: Substitute word under cursor
  - `<leader>x`: Make file executable

### Testing (Neotest)
- `<leader>tr`: Run nearest test
- `<leader>tR`: Run file tests
- `<leader>to`: Show test output
- `<leader>tO`: Toggle output panel
- `<leader>tn`: Jump to next test
- `<leader>tp`: Jump to previous test
- `<leader>ts`: Test summary

### Debugging & Diagnostics (Trouble.nvim)
- `<leader>xx`: Toggle diagnostics
- `<leader>xX`: Buffer diagnostics
- `<leader>cs`: Symbols
- `<leader>cl`: LSP definitions/references
- `<leader>xL`: Location list
- `<leader>xQ`: Quickfix list

### Tools & Utilities
- **Undotree**: `<leader>u` - Toggle undo tree
- **Copilot**:
  - `<leader>ce`: Enable Copilot
  - `<leader>cd`: Disable Copilot
- **Tmux**: `<C-f>` - Open tmux sessionizer
- **Config**: `<leader><leader>` - Source/reload config

### Netrw (File Explorer)
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

## Packer

Packer is the package manager of choice. Its configurations reside in `packer.lua`. To run and find all the necessary dependencies, execute `:PackerSync`.

When adding a plugin, insert its installation line into `packer.lua`, and create a configuration/keymap file in `after/plugin`.

