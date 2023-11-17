-- Package installer

local opts = {
	ensure_installed = {
    -- lua
		"lua-language-server",

    -- web
		"html-lsp",
		"prettier",
		"stylua",
		"jsonlint",
		"emmet-ls",
		"css-lsp",
		"eslint_d",

    -- tex
		"texlab",

    -- bash
		"bash-language-server",
		"beautysh",

    -- c/c++
		"clang-format",
		"clangd",
		"codelldb",

    -- python
		"debugpy",
	},
}

return opts
