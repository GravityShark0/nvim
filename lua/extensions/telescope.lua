--[[
  File: telescope.lua
  Description: Telescope plugin configuration
  See: https://github.com/nvim-telescope/telescope.nvim
]]
local telescope = require("telescope")

local actions = require "telescope.actions"
telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,

                ["<A-k>"] = actions.preview_scrolling_up,
                ["<A-j>"] = actions.preview_scrolling_down,
                ["<A-h>"] = actions.preview_scrolling_left,
                ["<A-l>"] = actions.preview_scrolling_right,
            },
            n = {
                ["<A-k>"] = actions.preview_scrolling_up,
                ["<A-j>"] = actions.preview_scrolling_down,
                ["<A-h>"] = actions.preview_scrolling_left,
                ["<A-l>"] = actions.preview_scrolling_right,
            }
        },
        layout_config = {
            horizontal = {
                preview_width = 0.55,
                results_width = 0.5,
            },
            width = 0.95,
            height = 0.90,
            preview_cutoff = 120,
        }
    },

    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    },
    telescope.load_extension("undo"),
    telescope.load_extension('fzf')
})
