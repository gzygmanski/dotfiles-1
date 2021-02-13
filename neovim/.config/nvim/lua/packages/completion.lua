vim.api.nvim_exec([[
  augroup Completion
    autocmd!
    autocmd BufEnter * lua require'completion'.on_attach()
  augroup end
]], false)

-- require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

vim.g.completion_chain_complete_list = {
    default = {{
        complete_items = {'lsp', 'ts'}
    }, {
        complete_items = {'buffers'}
    }, {
        mode = {'<c-p>'}
    }, {
        mode = {'<c-n>'}
    }}
}

vim.g.completion_enable_snippet = 'UltiSnips'
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

vim.cmd [[inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"]]
vim.cmd [[inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"]]