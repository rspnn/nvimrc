local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local custom_onedark = require'lualine.themes.onedark'

custom_onedark.normal.a.bg = '#2c323d'
custom_onedark.normal.a.fg = '#e06c75'

custom_onedark.normal.b.bg = '#2c323d'
custom_onedark.normal.b.fg = '#e06c75'

custom_onedark.insert.a.bg = '#2c323d'
custom_onedark.insert.a.fg = '#e5c07b'

custom_onedark.visual.a.bg = '#2c323d'
custom_onedark.visual.a.fg = '#c678dd'

custom_onedark.replace.a.bg = '#2c323d'
custom_onedark.replace.a.fg = '#98c379'

local diff = {
	"diff",
	colored = true,
	symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

lualine.setup{
    options = {
        theme = custom_onedark,
        section_separators = '',
        component_separators = ''
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', diff, 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
	extensions = {'nvim-tree'}
}

