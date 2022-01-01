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

require'lualine'.setup{
    options = {
        theme = custom_onedark,
        section_separators = '',
        component_separators = ''
    }
}
