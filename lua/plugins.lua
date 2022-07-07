-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
local use = require('packer').use
require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use 'preservim/nerdtree'
  use 'junegunn/fzf.vim' 
  use 'junegunn/fzf'
  use 'kosayoda/nvim-lightbulb'
  use 'tomasiser/vim-code-dark'
  use 'jacoborus/tender.vim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
	'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip'
  use 'theniceboy/vim-calc'
  use 'sharkdp/fd'
end)
