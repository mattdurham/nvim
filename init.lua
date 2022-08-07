require('plugins')
--require('lsp_config')
require('treesitter')
require('tele')
require('lualine').setup()
--require("go.format").goimport()  -- goimport + gofmt
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
vim.wo.colorcolumn = '240'
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.autowrite = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.cmd("syntax enable")
vim.cmd("set termguicolors")
vim.cmd("let g:aurora_italic = 1 ")
vim.cmd("let g:aurora_bold = 1")
vim.cmd("colorscheme aurora")
vim.cmd("let NERDTreeShowHidden=1")
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

local opts = { noremap=true, silent=true }
vim.keymap.set('n', 'ff', "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
vim.keymap.set({'n','i'}, '<F12>', vim.lsp.buf.definition, opts)

