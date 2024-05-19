vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pp", ":Ex<CR>")

-- Remap window navigation commands
local window_nav = {"h", "j", "k", "l", "s", "v"}
for _, key in ipairs(window_nav) do
    vim.keymap.set("n", "<leader>w" .. key, "<C-w>" .. key)
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
-- Same for when searching.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

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
