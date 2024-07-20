local util = require("formatter.util")
require("formatter").setup({
	logging = true,

	log_level = vim.log.levels.WARN,
	filetype = {
		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},
	},

	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
	},

	filetype = {
		go = {
			require("formatter.filetypes.go").gofmt,
		},
	},
})

vim.keymap.set("n", "<leader>cf", ":Format<CR>", { silent = true })
