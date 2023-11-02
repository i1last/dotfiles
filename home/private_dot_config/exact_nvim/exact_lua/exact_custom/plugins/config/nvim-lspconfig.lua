-- LSP. Suggests, define and etc

local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require("lspconfig")
local servers = { "html", "bashls" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.emmet_ls.setup({
	filetypes = { "html", "css", "scss" },
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.eslint.setup({
	filetypes = { "javascript", "typescript" },
	root_dir = lspconfig.util.root_pattern("package.json", ".git"),
	on_attach = on_attach,
	capabilities = capabilities,
})

lspconfig.texlab.setup({
	texlab = {
		build = {
			args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
			executable = "latexmk",
			forwardSearchAfter = false,
			onSave = true,
		},
		latexFormatter = "latexindent",
		latexindent = {
			modifyLineBreaks = false,
		},
		chktex = {
			onEdit = true,
			onOpenAndSave = false,
		},
		diagnosticsDelay = 300,
		forwardSearch = {
			executable = "zathura",
			args = { "--synctex-forward", "%l:1:%f", "%p" },
		},
	},
})

lspconfig.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = { "clangd", "--offset-encoding=utf-16" },
})
