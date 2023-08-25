--[[
  File: plugins.lua
  Description: This file needed for loading plugin list into lazy.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/folke/lazy.nvim
]]

require "helpers/globals"

return {
-- Themes{{{

-- Catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000,
  lazy = false,
  opts = require"extensions.colorscheme.catppuccin"
  },

-- Tokyo Night
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = require"extensions.colorscheme.tokyodark",
  -- },

-- }}}

  -- mason.nvim {{{
  {
    "williamboman/mason.nvim",
    -- lazy = false,
    event = { "BufReadPre", "BufNewFile "},
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require "extensions.mason"
    end
  },
  -- }}}

-- neo-tree.nvim {{{
   {
       "nvim-neo-tree/neo-tree.nvim",
       cmd = { "Neotree" },
       dependencies = {
         "nvim-lua/plenary.nvim",
         "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
         "MunifTanjim/nui.nvim",
       },
       config = function ()
         require "extensions.neotree"
       end,
   },
  -- }}}

  -- telescope-nvim {{{
  {
  "nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
  },
  config = function()
    require("extensions.telescope")
  end,
  },

  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  -- }}}

  -- nvim-cmp {{{
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      -- 'hrsh7th/cmp-nvim-lsp-signature-help',
      -- 'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
      'onsails/lspkind-nvim',
    },
    config = function()
      require "extensions.cmp"
    end
  },
  -- }}}

-- bufferline.nvim {{{
  {'akinsho/bufferline.nvim',
  version = "*",
    event = { "BufReadPost", "BufNewFile" },
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
      require("extensions.bufferline")
  end,
  },
-- }}}

  -- gitsigns.nvim {{{
  {
    'lewis6991/gitsigns.nvim',
    event = { "BufReadPre", "BufNewFile "},
    config = function()
      require "extensions.gitsigns"
    end
  },
  -- }}}

  -- nvim-treesitter {{{
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require "extensions.treesitter"
    end
  },
  -- }}}

-- lualine.nvim {{{
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
      require "extensions.lualine"
    end,
  },
-- }}}

-- nvim-autopairs {{{
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function,
  },
-- }}}

-- vim-illuminate {{{
  {
    'RRethy/vim-illuminate',
    event = { "BufReadPre", "BufNewFile "},
    config = function ()
      require('illuminate').configure({
      min_count_to_highlight = 2
      })
    end,
  },

-- }}}

-- which-key.nvim {{{
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      opt.timeout = true
      opt.timeoutlen = 500
    end,
    opts = function ()
      require"extensions.which-key"
    end
  },
-- }}}

-- indent-blankline.nvim {{{
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile "},
    opts = {
      space_char_blankline = " ",
      show_current_context = true,
      -- show_current_context_start = true,
    },
},
-- }}}

-- NeoColumn.nvim {{{
  {
    "ecthelionvi/NeoColumn.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {  always_on = true }
  },
-- }}}

-- mini.nvim {{{

-- mini.comment
  { 'echasnovski/mini.comment',
    version = false,
    event = { "BufReadPost", "BufNewFile" },
    opts = {}
  },

  -- mini.bufremove
  { 'echasnovski/mini.bufremove', version = false },

-- }}}

-- Blazingly Fast {{{
	{ "ThePrimeagen/harpoon" },
	{ "ThePrimeagen/vim-be-good" },
-- }}}

-- nvim-colizer.lua {{{
  {
    'norcalli/nvim-colorizer.lua',
    cmd = { 'ColorizerToggle' },
    opts = {}
  },
-- }}}


}




-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
