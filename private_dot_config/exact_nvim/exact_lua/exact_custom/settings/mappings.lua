local M = {}

M.nvimtree = {
	n = {
		["<leader>cl"] = { "<cmd> NvimTreeCollapse <CR>", "Collaplse all in nvimtree" },
		["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
	},
}

M.texlab = {
	n = {
		["<leader>tt"] = { "<cmd> TexlabBuild <CR>", "Complile tex via TexLab" },
		["<leader>tz"] = { [[:silent !zathura %:r.pdf &<CR>]], "Open {this}.pdf in zathura" },
	},
}

M.inkscapefigures = {
	n = {
		["<leader>ef"] = {
			[[<ESC>:silent execute "!inkscape-figures edit './figures/' > /dev/null 2>&1 &"<CR><CR>:redraw!<CR>]],
			"Edit figure via inkscape-figures (for tex files)",
		},
		["<leader>iw"] = {
			[[:silent execute "!inkscape-figures watch"<CR>]],
      "Init inkscape-figures watcher (for tex files)"
		},
	},
	i = {
		["<leader>cf"] = {
			[[<ESC>:silent execute ".!inkscape-figures create '" .. getline(".") .. "' './figures/'"<CR><CR>:w<CR>]],
			"Create figure via inkscape-figures (for tex files)",
		},
	},
}

return M
