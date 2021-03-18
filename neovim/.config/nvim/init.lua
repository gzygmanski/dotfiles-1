vim.cmd('source ~/.vimrc')


require('theme')
require('autocmd')

require('plugins')
require('plugins.nvimTree')
require('plugins.undotree')
require('plugins.vimtest')
require('plugins.vimspector')
require('plugins.maximizer')
require('plugins.telescope')
require('plugins.treesitter')

require('lsp')

