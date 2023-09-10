--[[
  File: cmp.lua
  Description: CMP plugin configuration (with lspconfig)
  See: https://github.com/hrsh7th/nvim-cmp
]]

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')

local luasnip = require("luasnip")


cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)


cmp.setup{
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- Luasnip expand
    end,
  },
  -- Mappings for cmp
  mapping = {
    -- Autocompletion menu
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),

    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i' }),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Turn on autocomplete on <C-y>
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    -- Use <C-e> to abort autocomplete
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(), -- Abort completion
      c = cmp.mapping.close(), -- Close completion window
    }),
    -- Use <C-p> and <C-n> to navigate through completion variants
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),

    print(cmp.get_active_entry()),

    ["<Tab>"] = cmp.mapping(function(fallback)
    -- oh mah gawd my first ever written self code thing
      if cmp.visible() and cmp.get_active_entry() ~= nil then
        cmp.select_next_item()
      -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
      -- they way you will only jump inside the snippet region
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      -- elseif has_words_before() then
      --   cmp.complete()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() and cmp.get_active_entry() ~= nil then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),

  },

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },                -- LSP
    -- { name = 'nvim_lsp_signature_help' }, -- LSP for parameters in functions
    -- { name = 'nvim_lua' },                -- Lua Neovim API
    { name = 'luasnip' },                 -- Luasnip
    { name = 'buffer' },                  -- Buffers
    { name = 'path' },                    -- Paths
    { name = 'orgmode' },                    -- Org-Mode
  }, {
  }),
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({
        mode = "symbol_text",
        preset = 'codicons',
        maxwidth = 50,
        buffer = "[Buffer]",
        nvim_lsp = "[LSP]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[Latex]",
        })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = " " .. (strings[1] or "") .. " "
      kind.menu = "    (" .. (strings[2] or "") .. ")"
      return kind
    end,
    -- format = lspkind.cmp_format({
    --   mode = 'symbol_text', -- Show only symbol annotations
    --   preset = 'codicons', -- Show only symbol annotations
    --   maxwidth = 50,   -- Prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
    --   menu = ({

    --   }),
    -- }}
  },
  window = {
    completion = { -- rounded border; thin-style scrollbar
      border = 'rounded',
      scrollbar = '║',
    },
    documentation = { -- no border; native-style scrollbar
      border = 'rounded',
      scrollbar = '║',
      -- other options
    },
  },
}



-- Add snippets from Friendly Snippets
require("luasnip/loaders/from_vscode").lazy_load()

