require("lualine").setup {
  options = {
    -- theme = 'catppuccin',
    component_separators = '',
    globalstatus = true,
    section_separators = { left = '', right = '' },
  },
  -- globalstatus = true,
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '', right = '' }},
    },
    -- lualine_c = { 'fileformat' },
    lualine_b = {},
    -- because barbeque/nvim-navic is installed
    lualine_c = { 'branch', 'diff'},
    -- lualine_c = { 'filename', 'branch', 'diff'},
    lualine_x = { 'diagnostics', {require"extensions.lualine_lsp", color = { gui='italic' }}, 'filetype' },
    -- lualine_y = { 'progress' },
    lualine_y = { },
    lualine_z = {
      { 'progress', separator = {left = '', right = '' }},
    },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location'},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
