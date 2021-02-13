local indent = 4

vim.o.termguicolors = true
vim.o.background = 'dark'
vim.o.listchars = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<'
vim.o.updatetime = 50
vim.o.clipboard = 'unnamed'
vim.o.mouse = 'n'
vim.o.scrolloff = 10
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.backup = false
vim.o.undodir = '~/.vim/undodir'
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.hidden = true
vim.o.autoread = true
vim.o.autowrite = true
vim.o.errorbells = false
vim.o.wildmenu = true

vim.bo.tabstop = indent
vim.bo.softtabstop = indent
vim.bo.shiftwidth = indent
vim.bo.autoindent = true
vim.bo.expandtab = true
vim.bo.smartindent = true
vim.bo.swapfile = false
vim.bo.undofile = true
vim.bo.spelllang = 'en,pl'
vim.bo.omnifunc = 'syntaxcomplete#Complete'

vim.wo.list = true
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.colorcolumn = '80'
vim.wo.signcolumn = 'yes'
vim.wo.spell = true

vim.cmd [[colorscheme dracula]]
vim.cmd [[syntax enable]]
vim.cmd [[filetype plugin on]]

vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 25
