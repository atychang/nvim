local opts = {
  on_attach = require("lsp.handlers").on_attach,
  capabilities = require("lsp.handlers").capabilities,
  settings = {
    yaml = {
      format = {
        enable = true,
      },
      schemas = {
        ["https://raw.githubusercontent.com/quantumblacklabs/kedro/develop/static/jsonschema/kedro-catalog-0.17.json"] = "conf/**/*catalog*",
        ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
      },
    },
  },
}

return {
  on_setup = function(server)
    server.setup(opts)
  end,
}
