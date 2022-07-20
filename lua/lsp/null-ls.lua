local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
  debug = false,
  sources = {
    -- Formatting --
    formatting.stylua,
    formatting.prettier.with({
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "vue",
        "css",
        "scss",
        "less",
        "html",
        "json",
        "yaml",
        "graphql",
      },
      prefer_local = "node_modules/.bin",
    }),
    formatting.shfmt,
    formatting.rustfmt,
    formatting.black,
    formatting.isort,
    formatting.google_java_format,
    formatting.ktlint,

    -- Diagnostics --
    diagnostics.eslint.with({
      prefer_local = "node_modules/.bin",
    }),
    diagnostics.flake8,
    diagnostics.ktlint,
    diagnostics.shellcheck,
    diagnostics.yamllint,

    -- Code Actions --
    code_actions.eslint.with({
      prefer_local = "node_modules/.bin",
    }),
    code_actions.gitrebase,
    code_actions.gitsigns,
    code_actions.shellcheck,
  },
})
