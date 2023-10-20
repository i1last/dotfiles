---@type ChadrcConfig
local M = {}

M.ui = { theme = "github_dark" }
M.plugins = "custom.plugins.init"
M.mappings = require("custom.settings.mappings")

return M
