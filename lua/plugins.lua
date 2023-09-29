--[[
  File: plugins.lua
  Description: This file needed for loading plugin list into lazy.nvim and loading plugins
  Info: Use <zo> and <zc> to open and close foldings
  See: https://github.com/folke/lazy.nvim
]]

require "helpers/globals"

-- Some of the more extra plugins
local extra = true
-- Gitsigns
-- Vim-illuminate
-- which-key
-- extra2 is eve more extra plugnio
local extra2 = true
-- neocolumn
-- nvim-Notify
-- noice.nvim
-- barbecue

return {
-- Themes{{{

-- Catppuccin
  {
    "catppuccin/nvim", name = "catppuccin", priority = 1000,
    lazy = false,
    opts = require"extensions.colorscheme.catppuccin",
  },
  -- {
  --   "ray-x/aurora", name = "aurora", priority = 1000,
  --   lazy = false,
  --   -- opts = require"extensions.colorscheme.catppuccin"
  -- },
-- { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
-- { "jacoborus/tender.vim" },

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
    -- enabled = extra,
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
      require("extensions.bufferline").setup()
  end,
  },
-- }}}

  -- gitsigns.nvim {{{
  {
    'lewis6991/gitsigns.nvim',
    enabled = extra,
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
    enabled = extra,
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
    -- event = "VeryLazy",
  enabled = extra,
    init = function()
      opt.timeout = true
      opt.timeoutlen = 500
    end,
    opts = function ()
      require"extensions.which-key"
    end,
    keys = {"<leader>", "z", "g"}
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
    enabled = extra2,
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
	{
    "ThePrimeagen/vim-be-good",
    cmd = { "VimBeGood"}
  },

  { "tpope/vim-fugitive",
    cmd = { "Git" },
  },
  { "mbbill/undotree",
    cmd = { "UndotreeToggle", "UndotreeFocus" }
  },
-- }}}

-- nvim-colizer.lua {{{
  {
    'norcalli/nvim-colorizer.lua',
    -- Its only lazily enabled by a command so im not gonna put it in extras
    cmd = { 'ColorizerToggle' },
    opts = {}
  },
-- }}}

-- noice.nvim {{{
{
  "folke/noice.nvim",
  enabled = extra2,
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    -- "rcarriga/nvim-notify",
    }
},
-- }}}

-- nvim-notify {{{
{
  "rcarriga/nvim-notify",
  enabled = extra2,
  opts = {
    background_colour = "#000000",
    top_down = false,
    render = "compact",
    stages = "fade",
    timeout = 1000,
    -- level = 2,
    -- minimum_width = 50,
  }
},
-- }}}

-- zen-mode {{{
{
  "folke/zen-mode.nvim",
  cmd = { "ZenMode" },
  opts = {
    window = {
      width = .55, -- width of the Zen window
    },
  }
},
-- }}}

-- nvim-navic {{{
{
  "utilyre/barbecue.nvim",
  enabled = extra2,
  event = { "BufReadPre", "BufNewFile "},
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    theme = "catppuccin",
  },
},
-- }}}
}


-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
