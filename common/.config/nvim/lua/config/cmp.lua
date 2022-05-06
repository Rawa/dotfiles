-- Setup nvim-cmp.
local cmp = require("cmp")
local luasnip = require("luasnip")

return {
  setup = function()
    cmp.setup({
      snippet = {
        expand = function(args)
           require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 100 },
        { name = 'buffer' },
        { name = "path" },
        {
          name = 'look',
          keyword_length = 2,
          option = {
              convert_case = true,
              loud = true,
              dict = '/usr/share/dict/words',
          }
        },
        { name = 'luasnip' }, -- For luasnip users.
      })
    })
  end
}
