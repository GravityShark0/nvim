local wk = require("which-key")


wk.register({
    -- mappings
    f = {
        name = "Telescope (F)ile", -- optional group name
        f = { "Find (F)ile" }, -- create a binding with label
        r = { "Find (R)ecent" }, -- additional options for creating the keymap
        n = { "New File" }, -- just a label. don't create any mapping
        
        ["1"] = "which_key_ignore",  -- special label to hide it in the popup
        b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
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
