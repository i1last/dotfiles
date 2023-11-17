local M = {}

M.nvimtree = {
	n = {
		["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
		["<leader>cl"] = { "<cmd> NvimTreeCollapse <CR>", "Collaplse all in nvimtree" },
		["<leader>tl"] = { "<cmd> NvimTreeResize 50 <CR>", "Resize nvimtree to 50" },
		["<leader>ts"] = { "<cmd> NvimTreeResize 25 <CR>", "Resize nvimtree to 25 (default)" },
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
			"Init inkscape-figures watcher (for tex files)",
		},
		["<leader>cf"] = {
			[[<ESC>:silent execute ".!inkscape-figures create '" .. getline(".") .. "' './figures/'"<CR><CR>:w<CR>]],
			"Create figure via inkscape-figures (for tex files)",
		},
	},
}

M.dap = {
  plugin = true,
	n = {
		["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Toggle breakpoint at line" },
		["<leader>dc"] = { "<cmd> DapContinue <CR>", "Start or continue the debugger" },
		["<leader>dt"] = { "<cmd> DapTerminate <CR>", "Terminate the debugger" },
		["<leader>di"] = { "<cmd> DapStepInto <CR>", "Step into the debugger" },
		["<leader>do"] = { "<cmd> DapStepOut <CR>", "Step out the debugger" },
		["<leader>ds"] = { "<cmd> DapStepOver <CR>", "Step over the debugger" },
	},
}

return M
