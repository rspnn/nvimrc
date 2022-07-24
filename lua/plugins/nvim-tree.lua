local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

nvim_tree.setup({
	view = {
		mappings = {
			list = {
				{ key = "<C-k>", action = "" },
				{ key = "<C-i>", action = "toggle_file_info" },
			},
		},
	},
})
