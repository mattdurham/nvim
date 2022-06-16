vim.cmd("nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>")
vim.cmd("nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>")
vim.cmd("nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>")
