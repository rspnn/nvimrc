if vim.fn.has('nvim-0.7.2') == 0 then
  error('Need Neovim v0.7.2 in order to run this config!')
end

-- Basic Neovim Configuration
require("options")

-- Plugins
require("plugins.plugins")

-- Colorscheme
require("plugins.onedarkpro")

-- Keymaps
require("keymaps")
