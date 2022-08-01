local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("plugins.lsp.utils")
require("plugins.lsp.lang")
require("plugins.lsp.cmp")
require("plugins.lsp.null-ls")
