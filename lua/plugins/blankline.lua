local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#5c6068 gui=nocombine]])

indent_blankline.setup({
	show_current_context = false,
	show_current_context_start = false,
	char_highlight_list = {
		"IndentBlanklineIndent1",
	},
})
