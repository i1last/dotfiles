local g = vim.g

-- Settings for UltiSnips
-- g.loaded_python3_provider = true
g.python_host_prog = "/usr/bin/python"
g.python3_host_prog = "/usr/bin/python3"
g.UltiSnipsExpandTrigger = "<Tab>" -- Enter to expand snippet
g.UltiSnipsJumpForwardTrigger = "<Tab>" -- Tab to next
g.UltiSnipsJumpBackwardTrigger = "<S-Tab>" -- Shift + Tab to previous
g.UltiSnipsSnippetDirectories = { "snippets" }

-- Settings for tex-conceal
vim.o.conceallevel = 1
g.tex_conceal = "abdgm"
g.tex_conceal_frac = 1
