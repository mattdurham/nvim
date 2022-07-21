require('plugins')
require('lsp_config')
require('color')
require('treesitter')
require('tele')
require('lualine').setup()
require("go.format").goimport()  -- goimport + gofmt
--require("go.inlay").setup()
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
--vim.cmd("set completeopt=menu,menuone,noselect")

