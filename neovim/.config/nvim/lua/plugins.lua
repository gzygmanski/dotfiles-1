require('packer').startup(function()
    use {
        'wbthomason/packer.nvim',
        opt = true
    }

    use 'neovim/nvim-lspconfig'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'nvim-lua/completion-nvim'
    use 'steelsojka/completion-buffers'
    use 'nvim-treesitter/completion-treesitter'
    -- use 'shougo/deoplete-lsp'
    -- use 'shougo/deoplete.nvim'

    use 'kyazdani42/nvim-web-devicons'
    use {
        'dracula/vim',
        as = 'dracula'
    }

    use 'vim-airline/vim-airline'
    use 'szw/vim-maximizer'
    use 'mbbill/undotree'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'rbong/vim-flog'

    use 'vim-test/vim-test'
    use 'puremourning/vimspector'

    use 'editorconfig/editorconfig-vim'

    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    use 'ThePrimeagen/vim-be-good'
end)
