local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

vim.cmd 'autocmd BufWritePost plugins PackerCompile' -- Auto compile when there are changes in plugins

return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    use {'dracula/vim', as = 'dracula'}

    use 'neovim/nvim-lspconfig'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'editorconfig/editorconfig-vim'
    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'rbong/vim-flog'

    use 'vim-test/vim-test'
    use 'puremourning/vimspector'
    use 'szw/vim-maximizer'

    use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }

    use 'ThePrimeagen/vim-be-good'
end)

