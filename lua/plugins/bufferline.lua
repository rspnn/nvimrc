local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end


bufferline.setup{
    options = {
        max_name_length = 20,
        max_prefix_length = 20, -- prefix used when a buffer is de-duplicated
        tab_size = 21,
        diagnostics = false, -- | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        offsets = { { filetype = "NvimTree" } },
        separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
    }
}
