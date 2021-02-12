local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables

-- Packages

cmd 'packadd paq-nvim'                  -- load the package manager
local paq = require('paq-nvim').paq     -- a convenient alias
paq{'savq/paq-nvim', opt=true}          -- Let Paq manage itself

paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-lua/lsp_extensions.nvim'
paq 'nvim-treesitter/nvim-treesitter'

paq 'kyazdani42/nvim-web-devicons'
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

paq 'editorconfig/editorconfig-vim'
paq 'vim-airline/vim-airline'
paq 'vim-test/vim-test'
paq 'puremourning/vimspector'
paq 'szw/vim-maximizer'
paq 'mbbill/undotree'

paq 'tpope/vim-fugitive'
paq 'airblade/vim-gitgutter'
paq 'rbong/vim-flog'

paq{'dracula/vim', 'as': 'dracula' }
paq 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
paq 'ThePrimeagen/vim-be-good'

-- Options

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

local indent = 4

cmd 'colorscheme dracula'

opt('o', 'updatetime', 50)
opt('o', 'clipboard', 'unnamed')
opt('o', 'mouse', 'n')
opt('o', 'hlsearch', true)
opt('o', 'incsearch', true)
opt('o', 'errorbells', false)
opt('o', 'backup', true)
opt('o', 'undodir', '~/.vim/undodir`')
opt('o', 'autowrite', true)
opt('o', 'autoread', true)
opt('o', 'completeopt', 'menuone,noinsert,noselect')
opt('o', 'hidden', true)
opt('o', 'scrolloff', 8)
opt('o', 'smartcase', true)
opt('o', 'termguicolors', true)
opt('o', 'wildmode', 'list:longest')
opt('o', mapleader, ' ')

opt('b', 'undofile', true)
opt('b', 'swapfile', false)
opt('b', 'expandtab', true)
opt('b', 'shiftwidth', indent)
opt('b', 'smartindent', true)
opt('b', 'tabstop', indent)
opt('b', 'spelllang', 'en,pl')

opt('w', 'list', true)
opt('w', 'listchars', 'eol:¬,tab:>·,trail:~,extends:>,precedes:<')
opt('w', 'number', true)
opt('w', 'relativenumber', true)
opt('w', 'cursorline', true)
opt('w', 'wrap', false)
opt('w', 'spell', false)

-- Mappings

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Tree-sitter

local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

-- telescope

require('telescope').setup{}

-- lsp

lsp.ccls.setup {}

map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')

-- Commands
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode
