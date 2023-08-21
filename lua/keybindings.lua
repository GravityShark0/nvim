require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ' '                                                                 -- Use Space, like key for alternative hotkeys

-- Custom {{{
nm('Y', '"+y')
vm('Y', '"+y')
nm('<leader>x', '<cmd>BufferKill<CR>')
-- }}}

-- LSP {{{
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )                                      -- Hover object
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')                                -- Code actions
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')                                     -- Rename an object
nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')                                -- Go to declaration
 -- }}}

-- Telescope {{{
nm('gd', '<cmd>Telescope lsp_definitions<CR>')                            -- Goto declaration
nm('<leader>fr', '<cmd>Telescope oldfiles<CR>')                                   -- Show recent files
nm('<leader>fg', '<cmd>Telescope git_files<CR>')                                  -- Search for a file in project
nm('<leader>ff', '<cmd>Telescope find_files<CR>')                                 -- Search for a file (ignoring git-ignore)
nm('<leader>fi', '<cmd>Telescope jumplist<CR>')                                   -- Show jumplist (previous locations)
nm('<leader>fb', '<cmd>Telescope git_branches<CR>')                               -- Show git branches
nm('<leader>fg', '<cmd>Telescope live_grep<CR>')                                  -- Find a string in project
nm('<leader>fq', '<cmd>Telescope buffers<CR>')                                    -- Show all buffers
nm('<leader>fa', '<cmd>Telescope<CR>')                                            -- Show all commands
nm('<leader>ft', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>')              -- Search for dynamic symbols
nm('<leader>fu', '<cmd>Telescope undo<CR>')              -- Search for dynamic symbols
-- }}}

-- Trouble {{{
-- nm('<leader>x', '<cmd>TroubleToggle<CR>')                                         -- Show all problems in project (with help of LSP)
-- nm('gr', '<cmd>Trouble lsp_references<CR>')                                       -- Show use of object in project
-- }}}

-- Neo Tree {{{
nm('<leader>n', '<cmd>Neotree toggle<CR>')                                        -- Toggle file explorer
nm('<leader>e', '<cmd>Neotree focus<CR>')                                        -- Toggle file explorer
-- }}}

-- Nvim Tree {{{
-- nm('<leader>n', '<cmd>NvimTreeToggle<CR>')                                        -- Toggle file explorer
-- nm('<leader>e', '<cmd>NvimTreeFocus<CR>')                                        -- Toggle file explorer
-- }}}

-- Bufferline {{{
nm('<Tab>', '<cmd>BufferLineCycleNext<CR>')                                        -- Toggle file explorer
nm('<S-Tab>', '<cmd>BufferLineCyclePrev<CR>')                                        -- Toggle file explorer
-- }}}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
