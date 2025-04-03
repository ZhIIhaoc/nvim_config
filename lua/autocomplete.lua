local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
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
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = "symbol_text", -- "text", "symbol", or "symbol_text"
      maxwidth = 50,        -- optional: limit width
      ellipsis_char = "...", -- optional: show ... if truncated
      symbol_map = {
        Copilot = "",  -- optional: override icon for sources
      },
	  -- menu = {
        -- buffer = "[BUF]",
        -- nvim_lsp = "[LSP]",
        -- luasnip = "[SNIP]",
        -- path = "[PATH]",
        -- nvim_lua = "[API]",
      -- },
    }),
  },
  experimental = {
    ghost_text = {
      hl_group = "CmpGhostText",
    },
  },
  window = {
    documentation = cmp.config.window.bordered(),
	completion = cmp.config.window.bordered(),
  },
})

vim.api.nvim_set_hl(0, "CmpGhostText", {
  fg = "#5c6370", -- soft gray (you can change this)
  italic = true,
})

