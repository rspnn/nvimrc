--vim.g.nvim_tree_widht = 1
vim.g.nvim_tree_indent_markers = 1
require'nvim-tree'.setup {
	auto_close = true,
	enable = true,
	icons = {
		hint = "",
		info = "",
		warning = "",
		error = "",
	},
	view = {
		width = 30,
		height = 30
	}
}
