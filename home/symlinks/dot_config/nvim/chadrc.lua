---@type ChadrcConfig
local M = {}

M.ui = { theme = "gruvbox" }
M.plugins = "custom.plugins.init"
M.mappings = require("custom.settings.mappings")

return M
