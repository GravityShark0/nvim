local M = {
    flavour = "macchiato",
    transparent_background = true,
    custom_highlights = function(colors)
        return {
            LineNrAbove = { fg = colors.text },
            LineNrBelow = { fg = colors.text },
        }
    end,
    integrations = {
        telescope = {
            enabled = true,
        },
        which_key = true,
        harpoon = true,
        neotree = true,
        gitsigns = true,
        cmp = true,
        illuminate = true,
        noice = true,
        barbecue = {
            dim_dirname = true, -- directory name is dimmed by default
            bold_basename = true,
            dim_context = false,
            alt_background = false,
        },
        indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "undercurl" },
                hints = { "undercurl" },
                warnings = { "undercurl" },
                information = { "undercurl" },
            },
            inlay_hints = {
                background = true,
            },
        },
    },
}

return M
