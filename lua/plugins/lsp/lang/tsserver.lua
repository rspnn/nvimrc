local lsp = require("lspconfig")

local capabilities = require("plugins.lsp.utils")

lsp.tsserver.setup({
	capabilities = capabilities,
	on_attach = function(client)
		client.resolved_capabilities.document_formatting = false
		client.resolved_capabilities.document_range_formatting = false
	end,
})
