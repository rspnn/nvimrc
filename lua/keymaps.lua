vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent=true }

map('n', '<C-h>', '<c-w>h', opts)
map('n', '<C-j>', '<c-w>j', opts)
map('n', '<C-k>', '<c-w>k', opts)
map('n', '<C-l>', '<c-w>l', opts)

map('n', '<A-l>', '<CMD>BufferLineCycleNext<CR>', opts)
map('n', '<A-h>', '<CMD>BufferLineCyclePrev<CR>', opts)
map('n', '<A-L>', '<CMD>BufferLineMoveNext<CR>', opts)
map('n', '<A-H>', '<CMD>BufferLineMovePrev<CR>', opts)

--
---- nvim-tree plugins
--map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
--
---- harpoon
--map('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', opts)
--map('n', '<leader>l', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
---- telescope
--map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>', opts)
--map('n', '<leader>fb', ':lua require("telescope.builtin").buffers()<CR>', opts)
--
---- Colorizer
--map('n', '<leader>ch', ':ColorizerToggle<CR>', opts)
