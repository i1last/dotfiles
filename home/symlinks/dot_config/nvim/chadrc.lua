---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "rosepine",
	statusline = {
		theme = "default",
		separator_style = "block",
	},
	tabufline = {
		lazyload = false,
    overriden_modules = function(modules)
      table.move(modules, 1, 1, 3, modules)
      table.remove(modules,1)
      table.remove(modules,3)
    end,
	},
}
M.plugins = "custom.plugins.init"
M.mappings = require("custom.settings.mappings")

return M
