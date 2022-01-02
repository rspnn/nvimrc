require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "bash",
        "lua",
        "html",
        "javascript",
        "json",
        "css"
    },
    sync_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
	indent = {
		enable = true,
		disable = { "python" },
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
		 }
    },
    -- windwp/nvim-ts-autotag
    autotag = {
        enable = true,
    },
	context_commentstring = {
		enable = true,
		config = {
			javascript = {
				__default = '// %s',
				jsx_element = '{/* %s */}',
				jsx_fragment = '{/* %s */}',
				jsx_attribute = '// %s',
				comment = '// %s'
			}
		}
	}
}
