local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "bashls",
  "clangd",
  "rust_analyzer",
  "pyright",
  "emmet_ls",
  "jsonls",
  "awk_ls",
  "bufls",
  "cmake",
  "dockerls",
  "gopls",
  "graphql",
  "vimls",
  "yamlls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
