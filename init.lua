--[[
  File: init.lua
  Description: Entry point file for neovim
]]

-- Bootsraping plugin manager
require "lazy-bootstrap"

-- Settings
require "keybindings"
require "settings"

-- Plugin management {{{
require("lazy").setup("plugins",
-- opts
{
    defaults = {
        lazy = true,
    -- ui = {
        -- border = vim.api.nvim_open_win(0, false, {relative='win', row=3, col=3, width=12, height=3}),
        -- },
    },
})
vim.cmd.colorscheme "catppuccin"
-- vim:tabstop=4 shiftwidth=4 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
