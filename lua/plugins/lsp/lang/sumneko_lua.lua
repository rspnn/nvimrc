local lsp = require("lspconfig")

local capabilities = require("plugins.lsp.utils")

lsp.sumneko_lua.setup({
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				enable = true,
				globals = {
					"vim",
				},
			},
		},
	},
})
