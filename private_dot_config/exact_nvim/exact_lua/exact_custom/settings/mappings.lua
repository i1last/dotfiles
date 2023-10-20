local M = {}

M.nvimtree = {
	n = {
		["<leader>cl"] = { "<cmd> NvimTreeCollapse <CR>", "Collaplse all in nvimtree" },
		-- toggle: дублирую для приоритета над mg979/vim-visual-multi
		["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
	},
}

M.texlab = {
	n = {
		["<leader>tt"] = { "<cmd> TexlabBuild <CR>", "Complile tex via TexLab" },
    ["<leader>tz"] = { ":silent !zathura %:r.pdf &<CR>", "Open {this}.pdf in zathura" }
	},
}

return M
