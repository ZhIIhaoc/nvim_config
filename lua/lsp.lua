local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.pyright.setup {}       -- Python
-- require("lspconfig").tsserver.setup {}      -- JavaScript/TypeScript
lspconfig.clangd.setup {}        -- C/C++

-- Enable semanticTokens support
capabilities.textDocument.semanticTokens = {
  dynamicRegistration = false,
  requests = {
    range = true,
    full = true,
  },
}

-- Python (Pyright)
lspconfig.pyright.setup({
  capabilities = capabilities,
})

