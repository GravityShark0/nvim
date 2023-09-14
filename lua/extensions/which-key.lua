local wk = require("which-key")


wk.register({
    -- mappings
    f = {
        name = "Telescope (F)ile", -- optional group name
        f = { "Find (F)iles" }, -- create a binding with label
        r = { "Find (R)ecent" }, -- additional options for creating the keymap
        j = { "Find (J)it files"},
        a = { "Find (A)ll files"},
        p = { "Find (P)revious location"},
        b = { "Find Git (B)ranches"},
        g = { "Find (G)rep"},
        ["?"]= { "All"},
        t = { "Find (T)abs [Buffers]"},
        u = { "Find (U)ndo tree"},

    },
    g = {
        name = "Fu(Git)ive",
        g = { "(G)it" },
        d = { "Git (D)iff" },
        c = { "Git (C)ommit" },
        a = { "Git (A)dd" },
        s = { "Git (S)how" },
        -- p = { "(G)it" },
        -- P = { "(G)it" },
    },
    w = { "Save" },

    a = { "Harpoon (A)dd" },
    ["`"] = { "Harpoon List" },

    c = { "Buffer (C)lose" },
    -- d = { "which_key_ignore" },
    -- y = { "which_key_ignore" },
    e = { "Neotree (E)nter" },
    n = { "Neotree (N)oggle" },

    u = { "(U)ndotree Toggle" },

}, { prefix = "<leader>" })

return {
    -- triggers = {
    --   "<leader>",
    --   "z",
    --   "g"
    -- }
    window = {
        border = "double",
        winblend = 100,
    }
}
