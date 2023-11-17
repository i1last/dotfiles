local plugins = {
	-- Client for Debug Adapter Protocol
	{
		"mfussenegger/nvim-dap",
		config = function(_, _)
			require("custom.plugins.config.nvim-dap")
		end,
	},

  -- Bridges mason.nvim with the nvim-dap plugins
	{
		"jay-babu/mason-nvim-dap.nvim",
		event = "VeryLazy",
		dependencies = {
			"williamboman/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = require("custom.plugins.opts.mason-nvim-dap"),
	},

	-- UI for nvim-dap plugin
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		requires = { "mfussenegger/nvim-dap" },
		config = function()
			require("custom.plugins.config.nvim-dap-ui")
		end,
	},

	-- For snippets
	{
		"L3MON4D3/LuaSnip",
		opts = require("custom.plugins.opts.luasnip"),
	},

	-- Conceal for .tex files
	{
		"KeitaNakamura/tex-conceal.vim",
		-- config in settings/g.lua and in plugins/config/nvim-lspconfig.lua
	},

	-- Extends vim's `%`
	{
		"andymass/vim-matchup",
	},

	-- Package installer
	{
		"williamboman/mason.nvim",
		opts = require("custom.plugins.opts.mason"),
	},

	-- Highlighter
	{
		"nvim-treesitter/nvim-treesitter",
		opts = require("custom.plugins.opts.nvim-treesitter"),
	},

	-- LSP. Suggests, define and etc
	{
		"neovim/nvim-lspconfig",
		dependencies = {

			-- Formatter
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.plugins.config.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.config.nvim-lspconfig")
		end,
	},

	-- File Browser on side bar
	{
		"nvim-tree/nvim-tree.lua",
		opts = require("custom.plugins.opts.nvim-tree"),
	},

	-- Makes nvim more friendly to non-English input methods
	{
		"Wansmer/langmapper.nvim",
		lazy = false,
		priority = 1,
		config = function()
			local lm = require("langmapper")
			lm.setup()
			lm.hack_get_keymap()
		end,
	},
}

return plugins
