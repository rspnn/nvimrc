local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"bash",
		"lua",
		"html",
		"javascript",
		"json",
		"css",
		"cpp",
	},
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	-- p00f/nvim-ts-rainbow
	rainbow = {
		enable = true,
		colors = {
			"#9A77CF",
			"#118DC3",
			"#56B6C2",
			"#1DA912",
			"#EEA825",
			"#EE9025",
			"#E05661",
		},
	},
	-- windwp/nvim-ts-autotag
	autotag = {
		enable = true,
	},
})
