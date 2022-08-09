require('plugins')
--require('lsp_config')
require('treesitter')
require('tele')
require('lualine').setup()
require('go').setup({
      run_in_floaterm = true,
      gopls_cmd = { 'gopls' },
      icons = true,
      verbose = false,
      lsp_codelens = false,
      lsp_keymaps = false,
      lsp_diag_hdlr = false,
      dap_debug_keymap = false,
      textobjects = true,
      luasnip = true,
    })
require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "open_current"
  }
})
  

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
vim.cmd("inoremap ( ()<Left>")
vim.cmd("inoremap [ []<Left>")
vim.cmd("inoremap { {}<Left>")
require('plugins')
--require('lsp_config')
require('treesitter')
require('tele')
require('lualine').setup()
require('go').setup({
      run_in_floaterm = true,
      gopls_cmd = { 'gopls' },
      icons = true,
      verbose = false,
      lsp_codelens = false,
      lsp_keymaps = false,
      lsp_diag_hdlr = false,
      dap_debug_keymap = false,
      textobjects = true,
      luasnip = true,
    })
require("neo-tree").setup({
  filesystem = {
    hijack_netrw_behavior = "open_current"
  }
})
  

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
vim.keymap.set({'i'}, '<F4>', "<Esc>:GoFillStruct<CR>a", opts)
vim.keymap.set({'i'}, '<ctrl>rr', "<Esc>:GoRename<CR>", opts)


vim.cmd("inoremap ( ()<Left>")
vim.cmd("inoremap [ []<Left>")
vim.cmd("inoremap { {}<Left>")
vim.cmd("nnoremap tf :GoTestFile<CR>")
