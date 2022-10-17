local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "comment",
    "commonlisp",
    "cpp",
    "css",
    "dart",
    "dockerfile",
    "gitattributes",
    "gitignore",
    "go",
    "graphql",
    "help",
    "html",
    "http",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "julia",
    "kotlin",
    "latex",
    "llvm",
    "lua",
    "make",
    "markdown",
    "ninja",
    "perl",
    "php",
    "proto",
    "python",
    "regex",
    "rst",
    "ruby",
    "rust",
    "scala",
    "scss",
    "sql",
    "swift",
    "toml",
    "typescript",
    "vim",
    "yaml",
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp
    "clangd",
    "clang-format",
    "cpplint",

    -- shell
    "bash-language-server",
    "shfmt",
    "shellcheck",

    -- rust
    "rust-analyzer",

    -- python
    "pyright",
    "flake8",
    "black",
    "isort",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M