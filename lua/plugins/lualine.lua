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

-- local custom_nord = require'lualine.themes.nord'
-- 
-- custom_nord.normal.a.bg = '#3B4252'
-- custom_nord.normal.a.fg = '#D8DEE9'
-- custom_nord.normal.b.bg = '#3B4252'
-- custom_nord.normal.c.bg = '#3B4252'
-- 
-- custom_nord.normal.b.bg = '#3B4252'
-- custom_nord.normal.b.fg = '#D8DEE9'
-- 
-- custom_nord.insert.a.bg = '#3B4252'
-- custom_nord.insert.a.fg = '#BF616A'
-- 
-- custom_nord.visual.a.bg = '#3B4252'
-- custom_nord.visual.a.fg = '#B483AD'
-- 
-- custom_nord.replace.a.bg = '#3B4252'
-- custom_nord.replace.a.fg = '#A3BE8C'

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

