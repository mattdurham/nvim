local ts = require('telescope')
ts.setup{defaults = { file_ignore_patterns= {"^vendor", "^.git"}}}
vim.cmd("nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>")
vim.cmd("nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>")
vim.cmd("nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.cmd("nnoremap <leader>fc <cmd>lua require('telescope.builtin').treesitter()<cr>")
vim.cmd("nnoremap <leader>fs <cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>")
