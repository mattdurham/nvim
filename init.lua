require('plugins')
require('lsp_config')
require('color')
require('treesitter')
require('telescope')
--require('complete')
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
vim.cmd("colorscheme tender")
--vim.cmd("set completeopt=menu,menuone,noselect")

