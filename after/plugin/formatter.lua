require("formatter").setup({
	logging = true,

	log_level = vim.log.levels.DEBUG,
	filetype = {
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},

		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		go = {
			require("formatter.filetypes.go").gofmt,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		dart = {
			require("formatter.filetypes.dart").dartformat,
		},
	},
})

vim.keymap.set("n", "<leader>cf", ":Format<CR>", { silent = true })
