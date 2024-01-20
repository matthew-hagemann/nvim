vim.api.nvim_create_user_command("GoFmtReload", function()
    vim.fn.system('gofmt -w ' .. vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)))
    vim.cmd("edit!")
end, {})

vim.api.nvim_set_keymap("n", "<leader>cf", ":GoFmtReload<CR>", { noremap = true, silent = true })

