vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pp", ":Lexplore<CR>")

-- Remap window navigation commands (Colemak: mnei + sv)
local window_nav = {"m", "n", "e", "i", "s", "v"}
local window_nav_map = {m = "h", n = "j", e = "k", i = "l", s = "s", v = "v"}
for _, key in ipairs(window_nav) do
    vim.keymap.set("n", "<leader>w" .. key, "<C-w>" .. window_nav_map[key])
end

-- new way to close a window
vim.keymap.set("n", "<leader>wc", ":q<CR>")

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tt", ":tabnext<CR>")
vim.keymap.set("n", "<leader>tm", ":tabmove ")
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>")
vim.keymap.set("n", "<leader>to", ":tabonly<CR>")

-- Keep half jumps focused in the middle.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Remap search navigation (since n is now down movement)
vim.keymap.set("n", "j", "nzzzv")
vim.keymap.set("n", "J", "Nzzzv")

-- Leader p doesn't lose what we are pasting!
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yanks to sys clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Colemak navigation: remap hjkl to mnei
vim.keymap.set({"n", "v"}, "m", "h")
vim.keymap.set({"n", "v"}, "n", "j")
vim.keymap.set({"n", "v"}, "e", "k")
vim.keymap.set({"n", "v"}, "i", "l")

-- Remap displaced keys
vim.keymap.set("n", "l", "i") -- l now enters insert mode
vim.keymap.set("n", "L", "I") -- L enters insert at start of line
vim.keymap.set("n", "h", "e") -- h goes to end of word
vim.keymap.set("n", "H", "E") -- H goes to end of WORD

-- Remap Alt+mnei to hjkl in normal and visual mode
vim.keymap.set({"n", "v"}, "<M-m>", "h")
vim.keymap.set({"n", "v"}, "<M-n>", "j")
vim.keymap.set({"n", "v"}, "<M-e>", "k")
vim.keymap.set({"n", "v"}, "<M-i>", "l")

-- Set leader b n and leader b p to jump list forward and back
vim.keymap.set("n", "<leader>bn", "<C-i>")
vim.keymap.set("n", "<leader>bp", "<C-o>")

