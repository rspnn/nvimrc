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

keymap("n", "<A-r>", "<CMD>lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<A-f>", "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<A-h>", "<CMD>lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<A-j>", "<CMD>lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<A-k>", "<CMD>lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "<A-l>", "<CMD>lua require('harpoon.ui').nav_file(4)<CR>", opts)
keymap("n", "<A-H>", "<CMD>lua require('harpoon.ui').nav_file(5)<CR>", opts)
keymap("n", "<A-J>", "<CMD>lua require('harpoon.ui').nav_file(6)<CR>", opts)
keymap("n", "<A-K>", "<CMD>lua require('harpoon.ui').nav_file(7)<CR>", opts)
keymap("n", "<A-L>", "<CMD>lua require('harpoon.ui').nav_file(8)<CR>", opts)

keymap("n", "<leader>c", "<CMD>ColorizerToggle<CR>", opts)

keymap("n", "<leader>w", "<CMD>lua vim.lsp.buf.formatting()<CR>", opts)
