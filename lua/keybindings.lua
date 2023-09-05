require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ' '                                                                 -- Use Space, like key for alternative hotkeys
g.maplocalleader = ','                                                                 -- Use Space, like key for alternative hotkeys

-- Custom {{{

-- Space + y|d yanks or cuts to system clipboard
nvm('<leader>y', "\"+y")
nvm('<leader>d', '\"+d')
-- Correct Pasting
nvm('<leader>p', '<CMD> set paste<CR>\"+p<CMD>set paste!<CR>')
nvm('<leader>P', '<CMD> set paste<CR>\"+P<CMD>set paste!<CR>')

-- Space + w to save and Space + c to close buffer
nm('<leader>c', '<CMD>lua require("mini.bufremove").delete()<CR>')
nm('<leader>wc', '<CMD>w | lua require("mini.bufremove").delete()<CR>')
nm('<leader>ww', '<CMD>w<CR>')

-- Middle positioned C+ D/U 
nm('<C-d>', '<C-d>zz')
nm('<C-u>', '<C-u>zz')
-- }}}

-- Harpoon {{{
		nm('<leader>a', '<CMD> lua require("harpoon.mark").add_file() <CR>')
		nm('<leader>`', '<CMD> lua require("harpoon.ui").toggle_quick_menu() <CR>')
		nm('<A-1>', '<CMD> lua require("harpoon.ui").nav_file(1) <CR>')
		nm('<A-2>', '<CMD> lua require("harpoon.ui").nav_file(2) <CR>')
		nm('<A-3>', '<CMD> lua require("harpoon.ui").nav_file(3) <CR>')
		nm('<A-4>', '<CMD> lua require("harpoon.ui").nav_file(4) <CR>')
		nm('<A-5>', '<CMD> lua require("harpoon.ui").nav_file(5) <CR>')
		nm('<A-6>', '<CMD> lua require("harpoon.ui").nav_file(6) <CR>')
-- }}}

-- LSP {{{
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                                      -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                                -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                                     -- Rename an object
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')                                -- Go to declaration
 -- }}}

-- Telescope {{{
nm('gd', '<cmd>Telescope lsp_definitions<CR>')                                  -- Goto declaration
nm('<leader>fr', '<cmd>Telescope oldfiles<CR>')                                 -- Show recent files
nm('<leader>fg', '<cmd>Telescope git_files<CR>')                                -- Search for a file in project
nm('<leader>ff', '<cmd>Telescope find_files<CR>')                               -- Search for a file (ignoring dotfiles)
nm('<leader>fa', '<cmd>Telescope find_files hidden=true no_ignore=true<CR>')    -- Search for a file (with dotfiles)
nm('<leader>fp', '<cmd>Telescope jumplist<CR>')                                 -- Show jumplist (previous locations)
nm('<leader>fb', '<cmd>Telescope git_branches<CR>')                             -- Show git branches
nm('<leader>fg', '<cmd>Telescope live_grep<CR>')                                -- Find a string in project
nm('<leader>ft', '<cmd>Telescope buffers<CR>')                                  -- Show all buffers
nm('<leader>f?', '<cmd>Telescope<CR>')                                          -- Show all commands
nm('<leader>fs', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>')            -- Search for dynamic symbols
nm('<leader>fu', '<cmd>Telescope undo<CR>')                                     -- Show undotree 
-- }}}

-- Neo Tree {{{
nm('<leader>n', '<cmd>Neotree toggle<CR>')                                        -- Toggle file explorer
nm('<leader>e', '<cmd>Neotree focus<CR>')                                        -- Toggle file explorer
-- }}}

-- Bufferline {{{
nm('<Tab>', '<cmd>BufferLineCycleNext<CR>')                                        -- Toggle file explorer
nm('<S-Tab>', '<cmd>BufferLineCyclePrev<CR>')                                        -- Toggle file explorer
-- }}}

-- vim undotree {{{
nm('<leader>u', '<cmd>UndotreeToggle<CR>')                                        -- Toggle file explorer
nm('<leader>i', '<cmd>UndotreeFocus<CR>')                                        -- Toggle file explorer
-- nm('<leader>i', '<cmd>UndotreeHide<CR>')                                        -- Toggle file explorer
-- }}}

-- vim-fugtive {{{
nm('<leader>g', '<cmd>Git<CR>')                                        -- Toggle file explorer
-- }}}
-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
