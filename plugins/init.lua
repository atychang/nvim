local overrides = require "custom.plugins.overrides"

return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  ["mfussenegger/nvim-dap"] = {},

  ["rcarriga/nvim-dap-ui"] = {
    config = function()
      require("dapui").setup()
    end,
  },

  ["folke/noice.nvim"] = {
    requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    event = "VimEnter",
    config = function()
      require("noice").setup()
    end,
  },

  ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.rust-tools"
    end,
  },

  ["kylechui/nvim-surround"] = {
    tag = "*",
    config = function()
      require("nvim-surround").setup()
    end,
  },
}
