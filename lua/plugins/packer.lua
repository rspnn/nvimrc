local fn = vim.fn
local install_path = fn.stdpath('data').. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {'olimorris/onedarkpro.nvim', config = 'require("plugins.onedarkpro")'}
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = 'require("plugins.treesitter")'}
	use {'p00f/nvim-ts-rainbow'}
	use {'windwp/nvim-autopairs', config = 'require("plugins.autopairs")'}
	use {'windwp/nvim-ts-autotag'}
	use {'folke/which-key.nvim', config = 'require("plugins.whichkey")'}
	use {'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim', config = 'require("plugins.telescope")'}
	use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}, config = 'require("plugins.lualine")'}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', config = 'require("plugins.bufferline")'}
	use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}, config = 'require("plugins.nvim-tree")'}
	use {'neovim/nvim-lspconfig', config = 'require("plugins.lsp")'}
	use {'williamboman/nvim-lsp-installer'}
	use {'hrsh7th/nvim-cmp'}
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'hrsh7th/cmp-vsnip'}
	use {'hrsh7th/vim-vsnip'}
	use {'ThePrimeagen/harpoon', requires = 'nvim-lua/plenary.nvim'}
	use {'norcalli/nvim-colorizer.lua', config = 'require("colorizer").setup()'}
	use {'lewis6991/gitsigns.nvim', config = 'require("gitsigns").setup{}'}
	use {'lukas-reineke/indent-blankline.nvim', config = 'require("plugins.blankline")'}
	use {'lukas-reineke/format.nvim', config = 'require("plugins.format")'}
	use {'terrortylor/nvim-comment', config = 'require("nvim_comment").setup()'}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
