local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Install your plugins here
return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/popup.nvim")
	-- Ui
	use({ "olimorris/onedarkpro.nvim" })
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = 'require("plugins.treesitter")' })
	use({ "p00f/nvim-ts-rainbow" })
	use({ "windwp/nvim-autopairs", config = 'require("plugins.autopairs")' })
	use({ "windwp/nvim-ts-autotag" })
	use({
		"nvim-telescope/telescope.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = 'require("plugins.telescope")',
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = 'require("plugins.lualine")',
	})
	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = 'require("plugins.nvim-tree")',
	})
	use({ "ThePrimeagen/harpoon", requires = "nvim-lua/plenary.nvim" })
  use({ "norcalli/nvim-colorizer.lua", config = 'require("plugins.colorizer")' })
	use({ "lewis6991/gitsigns.nvim", config = 'require("plugins.gitsigns")' })
	use({ "terrortylor/nvim-comment", config = 'require("nvim_comment").setup()' })
	use({ "neovim/nvim-lspconfig", config = 'require("plugins.lsp")' })
	use({ "hrsh7th/nvim-cmp", config = 'require("plugins.lsp.cmp")' })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-vsnip" })
	use({ "hrsh7th/vim-vsnip" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "jose-elias-alvarez/null-ls.nvim", config = 'require("plugins.lsp.null-ls")' })

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
