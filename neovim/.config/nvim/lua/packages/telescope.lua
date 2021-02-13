vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {
    noremap = true,
    silent = true
})

vim.api.nvim_set_keymap('n', '<leader>fv', [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {
    noremap = true,
    silent = true
})

vim.api.nvim_set_keymap('n', '<leader>gc', [[<cmd>lua require('telescope.builtin').git_commits()<cr>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>gb', [[<cmd>lua require('telescope.builtin').git_branches()<cr>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').git_status()<cr>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<leader>gp', [[<cmd>lua require('telescope.builtin').git_bcommits()<cr>]], {
    noremap = true,
    silent = true
})