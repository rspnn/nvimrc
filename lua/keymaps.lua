local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent=true }

vim.g.mapleader = ' '

map('n', '<leader>so', ':so %<CR>', opts)

map('n', '<C-h>', '<c-w>h', opts)
map('n', '<C-j>', '<c-w>j', opts)
map('n', '<C-k>', '<c-w>k', opts)
map('n', '<C-l>', '<c-w>l', opts)

-- nvim-tree plugins
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

map('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', opts)
map('n', '<leader>l', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
