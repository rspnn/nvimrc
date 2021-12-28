return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- Colorscheme
    use 'olimorris/onedarkpro.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'

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
   

    -- lsp
    use 'neovim/nvim-lspconfig'
    
end)
