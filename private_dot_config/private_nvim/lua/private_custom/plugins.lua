local plugins = {
  {
    "williamboman/mason.nvim", -- package installer
    opts = require "custom.configs.mason",
  },
  {
    "nvim-treesitter/nvim-treesitter", -- highlight
    opts = require "custom.configs.treesitter",
  },
  {
    "neovim/nvim-lspconfig", -- suggest, define, etc
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim", -- formatter
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.configs.nvimtree",
  },
  {
    "Wansmer/langmapper.nvim",
    lazy = false,
    priority = 1,
    config = function()
      local lm = require "langmapper"
      lm.setup()
      lm.hack_get_keymap()
    end,
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
  },
}

return plugins
