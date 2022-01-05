local lspconfig = require("lspconfig")
local c = require("plugins.lsp.custom")

lspconfig.tsserver.setup(c.default({
    root_dir = c.custom_cwd,
    settings = {
        tsserver = {
            useBatchedBufferSync = true,
        },
        javascript = {
            autoClosingTags = true,
            suggest = {
                autoImports = true,
            },
            updateImportsOnFileMove = {
                enable = true,
            },
            suggestionActions = {
                enabled = false,
            },
        },
    },
}))
