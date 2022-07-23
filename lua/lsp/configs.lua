local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local lspconfig = require("lspconfig")

local servers = {
  "bashls",
  "cssls",
  "emmet-ls",
  "eslint",
  "html",
  "jsonls",
  "pyright",
  "rust_analyzer",
  "sumneko_lua",
  "yamlls",
}

lsp_installer.setup({
  ensure_installed = servers,
})

for _, server in pairs(servers) do
  local opts = {
    on_attach = require("lsp.handlers").on_attach,
    capabilities = require("lsp.handlers").capabilities,
  }

  local has_config, config = pcall(require, "lsp.settings." .. server)
  if not has_config or config == nil or type(config) ~= "table" then
    lspconfig[server].setup(opts)
  else
    config.on_setup(lspconfig[server])
  end
end
