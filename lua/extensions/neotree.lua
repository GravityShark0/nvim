local neotree = require("neo-tree")

neotree.setup({
  event_handlers = {
    {
      event = "neo_tree_buffer_enter",
      handler = function()
        cmd [[
          setlocal relativenumber
        ]]
      end,
    }
  },

  close_if_last_window = true,
  name = {
    trailing_slash = true,
    use_git_status_colors = true,
    highlight = "NeoTreeFileName",
  },

  window = {
  position = "right",
  width = 30,
  },

})

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0
