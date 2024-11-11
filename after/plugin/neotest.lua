require("neotest").setup({
	adapters = {
		require("neotest-dart")({
			command = "flutter",
			use_lsp = true,
		}),
	},
	summary = {
		mappings = {
			jumpto = "<CR>",
			run = "r",
			stop = "u",
			expand = "<Tab>",
			output = "o",
		},
	},
})

vim.keymap.set('n', '<leader>tr', "<CMD>Neotest run<CR>", {})
vim.keymap.set('n', '<leader>tR', "<CMD>Neotest run file<CR>", {})
vim.keymap.set('n', '<leader>to', "<CMD>Neotest output<CR>", {})
vim.keymap.set('n', '<leader>tO', "<CMD>Neotest output-panel<CR>", {})
vim.keymap.set('n', '<leader>tn', "<CMD>Neotest jump next<CR>", {})
vim.keymap.set('n', '<leader>tp', "<CMD>Neotest jump prev<CR>", {})
vim.keymap.set('n', '<leader>ts', "<CMD>Neotest summary<CR>", {})

