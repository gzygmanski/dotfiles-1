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
    use 'kyazdani42/nvim-web-devicons'
    use 'vim-airline/vim-airline'
    use 'szw/vim-maximizer'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {
        'dracula/vim',
        as = 'dracula'
    }
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'rbong/vim-flog'
    use 'vim-test/vim-test'
    use 'puremourning/vimspector'
    use 'mbbill/undotree'
    use 'editorconfig/editorconfig-vim'
    use 'ThePrimeagen/vim-be-good'
end)
