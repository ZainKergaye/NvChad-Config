local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "jdtls", "angularls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
--
-- Registry: https://mason-registry.dev/registry/list
-- https://github.com/williamboman/mason-lspconfig.nvim#default-configuration
-- Templates:
-- https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/server_configurations
