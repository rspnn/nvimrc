local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
	return
end

onedarkpro.setup({
	theme = "onedark",
	hlgroups = { -- Overriding the Comment highlight group
		NvimTreeFolderIcon = { fg = "#e06c75" },
	},
	styles = { -- Choose from "bold,italic,underline"
		strings = "NONE", -- Style that is applied to strings.
		comments = "italic", -- Style that is applied to comments
		keywords = "NONE", -- Style that is applied to keywords
		functions = "NONE", -- Style that is applied to functions
		variables = "NONE", -- Style that is applied to variables
		virtual_text = "NONE", -- Style that is applied to virtual text
	},
	options = {
		bold = true, -- Use the themes opinionated bold styles?
		italic = true, -- Use the themes opinionated italic styles?
		underline = true, -- Use the themes opinionated underline styles?
		undercurl = true, -- Use the themes opinionated undercurl styles?
		cursorline = true, -- Use cursorline highlighting?
		transparency = true, -- Use a transparent background?
		terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
		window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
	},
})
onedarkpro.load()
