local g = vim.g

-- Settings for UltiSnips
g.UltiSnipsExpandTrigger = "<Tab>" -- Enter to expand snippet
g.UltiSnipsJumpForwardTrigger = "<Tab>" -- Tab to next
g.UltiSnipsJumpBackwardTrigger = "<S-Tab>" -- Shift + Tab to previous
g.UltiSnipsSnippetDirectories = {"snippets"}

-- Settings for tex-conceal
vim.o.conceallevel = 1
g.tex_conceal = "abdgm"
g.tex_conceal_frac = 1
