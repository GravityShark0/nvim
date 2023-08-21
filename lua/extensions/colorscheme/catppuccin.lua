return {
    flavour = "mocha",
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
