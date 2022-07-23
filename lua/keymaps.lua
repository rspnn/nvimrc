local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

keymap("n", "<leader>q", "<CMD>bdelete<CR>", opts)

keymap("n", "<esc><esc>", "<CMD>nohlsearch<CR>", opts)

keymap("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", opts)

keymap("n", "<leader>ff", "<CMD>Telescope find_files<CR>", opts)
keymap("n", "<leader>fb", "<CMD>Telescope buffers<CR>", opts)

keymap("n", "<leader>a", "<CMD>lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<leader>;", "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<leader>h", "<CMD>lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<leader>j", "<CMD>lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<leader>k", "<CMD>lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "<leader>l", "<CMD>lua require('harpoon.ui').nav_file(4)<CR>", opts)
keymap("n", "<leader>H", "<CMD>lua require('harpoon.ui').nav_file(5)<CR>", opts)
keymap("n", "<leader>J", "<CMD>lua require('harpoon.ui').nav_file(6)<CR>", opts)
keymap("n", "<leader>K", "<CMD>lua require('harpoon.ui').nav_file(7)<CR>", opts)
keymap("n", "<leader>L", "<CMD>lua require('harpoon.ui').nav_file(8)<CR>", opts)

keymap("n", "<A-l>", '<CMD>lua require("harpoon.ui").nav_next()<CR>', opts)
keymap("n", "<A-h>", '<CMD>lua require("harpoon.ui").nav_prev()<CR>', opts)

keymap("n", "<leader>c", "<CMD>ColorizerToggle<CR>", opts)

keymap("n", "<leader>f", "<CMD>lua vim.lsp.buf.formatting()<CR>", opts)
