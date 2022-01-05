local status_ok, onedarkpro = pcall(require, "onedark")
if not status_ok then
  return
end

onedarkpro.setup({
    theme = 'onedark', -- Override with "onedark" or "onelight". Alternatively, remove the option and the theme uses `vim.o.background` to determine
    colors = {
        onedark = {
            bg = "#282C34" -- # Like VSCode
        }
    },
    hlgroups = {
        Search = { fg = '#282C34', bg = '#E06C75', style = "bold" },
        IncSearch = { fg = '#282C34', bg = '#E06C75', style = "bold" },
        Visual = { fg = "#282C34", bg = "#C678DD" }, -- Visual mode selection
    	CmpItemAbbrMatch = { fg = "#E06C75", style = "bold" },

        -- LspDiagnosticsUnderlineHint = { fg = "#8C5257"  },
    },
    styles = {
        strings = "NONE", -- Style that is applied to strings
        comments = "NONE", -- Style that is applied to comments
        keywords = "NONE", -- Style that is applied to keywords
        functions = "NONE", -- Style that is applied to functions
        variables = "NONE", -- Style that is applied to variables
    },
    options = {
        bold = true, -- Use the themes opinionated bold styles?
        italic = true, -- Use the themes opinionated italic styles?
        underline = true, -- Use the themes opinionated underline styles?
        undercurl = true, -- Use the themes opinionated undercurl styles?
        cursorline = true, -- Use cursorline highlighting?
        transparency = true, -- Use a transparent background?
        terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
        window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
    }
})
onedarkpro.load()
