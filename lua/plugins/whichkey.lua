local wk = require('which-key')
local mappings = {
	s = {":so %<cr>", "Source File"},
	e = {":NvimTreeToggle<cr>", "File Explorer"},
	E = {":e ~/.config/nvim/init.lua<cr>", "Neovim Config"},
	f = {
		name = "Telescope",
		f = {"<cmd>Telescope find_files<cr>", "Find Files"},
		b = {"<cmd>Telescope buffers<cr>", "Find Files"}
	},
	-- harpoon
	a = {":lua require('harpoon.mark').add_file()<cr>", "Mark File by Harpoon"},
	l = {":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Harpoon Toggle"},
}

local opts = {prefix = '<leader>'}

wk.register(mappings, opts)
