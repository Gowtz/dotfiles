vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --Theme
    use { "ellisonleao/gruvbox.nvim" }
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
  }
    -- File Search
    use {
        'nvim-telescope/telescope.nvim', 
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Color for Code 
    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- Comment
    use  'numToStr/Comment.nvim'
    -- auto pair
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    -- vscode-like pictograms
    use 'onsails/lspkind-nvim' 
    -- lualine
    use 'kyazdani42/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
    }



    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
end)
