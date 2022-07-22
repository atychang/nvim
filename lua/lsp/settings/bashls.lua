local opts = {
  on_attach = require("lsp.handlers").on_attach,
  capabilities = require("lsp.handlers").capabilities,
}

return {
  on_setup = function(server)
    server.setup(opts)
  end,
}
