local M = {
    flavour = "mocha",
    transparent_background = true,
    color_overrides = {
        mocha = {
			rosewater = "#efc9c2",
			flamingo = "#ebb2b2",
			pink = "#f2a7de",
			mauve = "#b889f4",
			red = "#ea7183",
			maroon = "#ea838c",
			peach = "#f39967",
			yellow = "#eaca89",
			green = "#96d382",
			teal = "#78cec1",
			sky = "#91d7e3",
			sapphire = "#68bae0",
			blue = "#739df2",
			lavender = "#a0a8f6",
			text = "#b5c1f1",
			subtext1 = "#a6b0d8",
			subtext0 = "#959ec2",
			overlay2 = "#848cad",
			overlay1 = "#717997",
			overlay0 = "#63677f",
			surface2 = "#505469",
			surface1 = "#3e4255",
			surface0 = "#2c2f40",
			base = "#1a1c2a",
			mantle = "#141620",
			crust = "#0e0f16",
        }
    },

    custom_highlights = function(colors)
        return {
            LineNr = { fg = colors.mauve },
            LineNrBelow = { fg = colors.sky },
            LineNrAbove = { fg = colors.sky },
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
