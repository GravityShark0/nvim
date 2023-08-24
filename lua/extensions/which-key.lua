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
    w = {
        name = "Save",
        w = { "Save" },
        c = { "Save and (C)lose" },
    },
    a = { "Harpoon (A)dd" },
    ["`"] = { "Harpoon List" },
    c = { "Buffer (C)lose" },
    d = { "which_key_ignore" },
    y = { "which_key_ignore" },
    e = { "Neotree (E)nter" },
    n = { "Neotree (N)oggle" },

}, { prefix = "<leader>" })

return {
    triggers = {
      "<leader>",
      "z",
      "g"
    }
}
