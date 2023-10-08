local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html" } --, "cssls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.emmet_ls.setup {
  filetypes = { "html", "css", "scss" },
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.eslint.setup {
  filetypes = { "javascript", "typescript" },
  root_dir = lspconfig.util.root_pattern("package.json", ".git"),
  on_attach = on_attach,
  capabilities = capabilities,
}
