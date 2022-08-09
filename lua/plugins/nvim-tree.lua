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
	renderer = {
		indent_markers = {
			enable = true,
			inline_arrows = true,
		},
		icons = {
			glyphs = {
				git = {
					unstaged = "",
					staged = " ﱣ",
					unmerged = " ",
					renamed = "凜",
					untracked = "ﭜ",
					deleted = " ",
					ignored = " ﭥ",
				},
			},
		},
	},
	trash = {
		cmd = "trash-put",
		require_confirm = true,
	},
	filters = { custom = { "^.git$" } },
})
