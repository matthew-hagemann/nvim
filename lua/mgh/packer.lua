-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])
vim.o.termguicolors = true

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Telescope fuzzy finder
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- web devicons
	use("nvim-tree/nvim-web-devicons")

	-- formatter
	use("mhartington/formatter.nvim")


	-- Debugging
	use({ "mfussenegger/nvim-dap", requires = { "rcarriga/nvim-dap-ui" } })

use {
    'maxmx03/solarized.nvim',
    config = function()
      vim.o.termguicolors = true
      vim.o.background = 'light'
      ---@type solarized
      local solarized = require('solarized')
      solarized.setup({})
      vim.cmd.colorscheme 'solarized'
    end
}

	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
		config = function()
			require("flutter-tools").setup({
				fvm = true
			})
		end,
	})

	-- Undo tree for viewing a diagram of how we got here
	use("mbbill/undotree")

	-- comment stuff out
	use("tpope/vim-commentary")

	-- Trouble plugin for displaying LSP errors and warnings
	use({
		"folke/trouble.nvim",
		cmd = "Trouble",
		config = function()
			require("trouble").setup({}) -- for default options
		end,
	})

	-- neotest
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"sidlatau/neotest-dart",
		},
		config = function()
			require("neotest") -- load the neotest.lua file
		end,
	})

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			--- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "rafamadriz/friendly-snippets" })
	use({ "github/copilot.vim" })
end)
