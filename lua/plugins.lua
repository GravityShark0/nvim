--[[
  File: plugins.lua
  Description: This file needed for loading plugin list into lazy.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/folke/lazy.nvim
]]

require "helpers/globals"

return {
  -- Mason {{{
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

-- Neo Tree {{{
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

  -- Telescope {{{
  {
  "nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "debugloop/telescope-undo.nvim",
    'nvim-telescope/telescope-fzf-native.nvim',
  },
  config = function()
    require("extensions.telescope")
  end,
  },
  -- }}}

  -- CMP {{{
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
      'onsails/lspkind-nvim',
    },
    config = function()
      require "extensions.cmp"
    end
  },
  -- }}}

  -- Git Signs{{{
  {
    'lewis6991/gitsigns.nvim',
    event = { "BufReadPre", "BufNewFile "},
    config = function()
      require "extensions.gitsigns"
    end
  },
  -- }}}

  -- Trouble {{{
  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle" },
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require "extensions.trouble"
    end,
  },
  -- -- }}}

  -- TreeSitter {{{
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require "extensions.treesitter"
    end
  },
  -- }}}

-- Theme {{{
  { "catppuccin/nvim", name = "catppuccin", priority = 1000,
  lazy = false,
  opts = {
    flavour = "mocha",
    transparent_background = true,
    custom_highlights = function(colors)
        return {
            LineNrAbove = { fg = colors.text },
            LineNrBelow = { fg = colors.text },
        }
    end,
    },
  },
-- }}}

-- bufferline.nvim {{{
  {'akinsho/bufferline.nvim',
  version = "*",
    event = { "BufReadPost", "BufNewFile" },
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
      require("extensions.bufferline").setup()
  end,
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

-- comment.nvim {{{
  {
    'numToStr/Comment.nvim',
    event = { "BufReadPost", "BufNewFile" },
    opts = {},
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
      opt.timeoutlen = 800
    end,
    opts = {
    presets = {
      operators = true, -- adds help for operators like d, y, ...
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },


    }
  },
-- }}}

-- indent-blankline.nvim{{{
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile "},
    config = {
      space_char_blankline = " ",
      show_current_context = true,
      -- show_current_context_start = true,
    },
},
-- }}}

-- nvim-navic {{{
  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  },

-- }}}
}




-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
