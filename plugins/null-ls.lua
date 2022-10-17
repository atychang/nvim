local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier.with {
    filetypes = {
      "javascript",
      "typescript",
      "flow",
      "jsx",
      "json",
      "css",
      "scss",
      "less",
      "html",
      "vue",
      "angular",
      "graphql",
      "markdown",
      "xml",
      "yaml",
    },
  },

  -- lua
  b.formatting.stylua,

  -- shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- c/cpp
  b.formatting.clang_format,
  b.diagnostics.cpplint,

  -- rust
  b.formatting.rustfmt,

  -- python
  b.formatting.black,
  b.formatting.isort,
  b.diagnostics.flake8,

  -- cmake
  b.formatting.cmake_format,
  b.diagnostics.cmake_lint,

  -- golang
  b.formatting.gofumpt,

  -- yaml
  b.diagnostics.yamllint,
}

null_ls.setup {
  sources = sources,
}
