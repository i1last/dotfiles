---@type ChadrcConfig 
local M = {}
M.ui = { theme = 'github_dark' }
M.plugins = "custom.plugins"
M.nvimtree = {
  n = {
    -- toggle: дублирую для приоритета над mg979/vim-visual-multi
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

return M
