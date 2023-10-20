-- Support for LaTeX

vim.g['vimtex_view_method'] = 'zathura'
vim.g['vimtex_context_pdf_viewer'] = 'zathura'
vim.g['vimtex_quickfix_mode'] = 0
vim.g['vimtex_mappings_enabled'] = 1
vim.g['vimtex_indent_enabled'] = 0
vim.g['vimtex_log_ignore'] = ({
  'Underfull',
  'Overfull',
  'specifier changed to',
  'Token no allowed in a PDF string'
})
