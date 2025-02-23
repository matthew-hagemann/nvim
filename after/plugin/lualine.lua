local colors = {
    white = '#f8f8f2',
    black = '#000000',
}

local custom_dracula = require'lualine.themes.dracula'
custom_dracula.normal.a.fg= colors.white
custom_dracula.normal.a.bg = colors.black
custom_dracula.normal.b.bg = colors.black
custom_dracula.normal.c.bg = colors.black
custom_dracula.insert.a.fg= colors.white
custom_dracula.insert.a.bg = colors.black
custom_dracula.insert.b.bg = colors.black
custom_dracula.insert.c.bg = colors.black
custom_dracula.visual.a.fg= colors.white
custom_dracula.visual.a.bg = colors.black
custom_dracula.visual.b.bg = colors.black
custom_dracula.visual.c.bg = colors.black
custom_dracula.replace.a.fg= colors.white
custom_dracula.replace.a.bg = colors.black
custom_dracula.replace.b.bg = colors.black
custom_dracula.replace.c.bg = colors.black
custom_dracula.command.a.fg= colors.white
custom_dracula.command.a.bg = colors.black
custom_dracula.command.b.bg = colors.black
custom_dracula.command.c.bg = colors.black
custom_dracula.inactive.a.fg= colors.white
custom_dracula.inactive.a.bg = colors.black
custom_dracula.inactive.b.bg = colors.black
custom_dracula.inactive.c.bg = colors.black

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = custom_dracula,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		always_show_tabline = true,
		globalstatus = false,
		refresh = {
			statusline = 100,
			tabline = 100,
			winbar = 100,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename"},
		lualine_x = {
			"encoding",
			"fileformat",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
