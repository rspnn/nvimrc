return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- Colorscheme
    use 'olimorris/onedarkpro.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- File Explorer
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

    -- Better syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'
    use 'terrortylor/nvim-comment'

    -- lsp
    use 'neovim/nvim-lspconfig'
    -- cmp   
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        -- tag = 'release' -- To use the latest release
    }
end)
