-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
local use = require('packer').use
require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "python", "go", "javascript", "rust" },
        highlight = { enable = true },
      })
    end,
    run = ":TSUpdate",
  })
  use({
    'ray-x/navigator.lua',
    requires = {"ray-x/guihua.lua", run = "cd lua/fzy && make" },
        config = function()
          require("navigator").setup({
            debug = true,
            lsp = {
              format_on_save = true,
              diagnostic_scrollbar_sign = { "▃", "▆", "█" }, -- set to nil to disable, set to {'╍', 'ﮆ'} to enable diagnostic status in scroll bar area
            },
          })
        end,
  })
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'ray-x/go.nvim'
  use ({
    'hrsh7th/nvim-cmp',
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },

        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),  
        }),

        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
        },
      })
      require("cmp").setup.cmdline(":", {
        sources = {
          { name = "cmdline" },
        },
      })
      require("cmp").setup.cmdline("/", {
        sources = {
          { name = "buffer" },
        },
      })
    end,
  })
 use({
    'ray-x/lsp_signature.nvim',
    config = function()
      local signature_config = {
        log_path = vim.fn.expand("$HOME") .. "/tmp/sig.log",
        debug = true,
        verbose = true,
        floating_window = false,
        hint_enable = true,
        handler_opts = {
          border = "single",
        },
        max_width = 80,
      }
      require("lsp_signature").setup(signature_config)
    end,
  })

  --use 'preservim/nerdtree'
  use 'junegunn/fzf.vim' 
  use 'junegunn/fzf'
  use 'kosayoda/nvim-lightbulb'
  use {
	'nvim-telescope/telescope.nvim',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  --use 'hrsh7th/cmp-buffer'
  --use 'hrsh7th/cmp-path'
  --use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  --use 'saadparwaiz1/cmp_luasnip'
  use 'ray-x/aurora'
  -- use 'ray-x/lsp_signature.nvim'
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- rer to the configuration section below
    }
    end
  }
   use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
   }
   use {
     "nvim-neo-tree/neo-tree.nvim",
      requires = { 
         "nvim-lua/plenary.nvim",
         "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
         "MunifTanjim/nui.nvim",
       },
     }
   
end)

