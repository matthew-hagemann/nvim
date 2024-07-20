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

	-- formatter
	use("mhartington/formatter.nvim")

	-- Debugging
	use({ "mfussenegger/nvim-dap", requires = { "rcarriga/nvim-dap-ui" } })

	-- Theme
	-- use({
	-- 'rose-pine/neovim',
	-- as = 'rose-pine',
	-- config = function()
	-- vim.cmd('colorscheme rose-pine')
	-- end
	-- })

	use("tanvirtin/monokai.nvim")
	require("monokai").setup({ palette = require("monokai") })
	-- Adwaita
	-- use({
	--   'Mofiqul/adwaita.nvim',
	--   config = function()
	--   vim.g.adwaita_darker = true             -- for darker version
	--   vim.cmd('colorscheme adwaita')
	--   end
	-- })

	-- Undo tree for viewing a diagram of how we got here
	use("mbbill/undotree")

	-- comment stuff out
	use("tpope/vim-commentary")

	-- Trouble plugin for displaying LSP errors and warnings
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				height = 20, -- height of the trouble list when position is top or bottom
				width = 50, -- width of the list when position is left or right
				icons = false, -- use devicons for filenames
				action_keys = { -- key mappings for actions in the trouble list
					-- map to {} to remove a mapping, for example:
					-- close = {},
					close = "q", -- close the list
					cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
					refresh = "r", -- manually refresh
					jump = { "<cr>", "<tab>", "<2-leftmouse>" }, -- jump to the diagnostic or open / close folds
					open_split = { "<c-x>" }, -- open buffer in new split
					open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
					open_tab = { "<c-t>" }, -- open buffer in new tab
					jump_close = { "o" }, -- jump to the diagnostic and close the list
					toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
					switch_severity = "s", -- switch "diagnostics" severity filter level to HINT / INFO / WARN / ERROR
					toggle_preview = "P", -- toggle auto_preview
					hover = "K", -- opens a small popup with the full multiline message
					preview = "p", -- preview the diagnostic location
					open_code_href = "c", -- if present, open a URI with more information about the diagnostic error
					close_folds = { "zM", "zm" }, -- close all folds
					open_folds = { "zR", "zr" }, -- open all folds
					toggle_fold = { "zA", "za" }, -- toggle fold of current file
					previous = "k", -- previous item
					next = "j", -- next item
					help = "?", -- help menu
				},
			})
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
