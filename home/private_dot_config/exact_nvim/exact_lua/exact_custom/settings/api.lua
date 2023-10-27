local a = vim.api

-- Для удобного исправления ошибок
-- Для исправления предыдущей ошибки: Ctrl + L
a.nvim_set_keymap("i", "<C-l>", "<C-g>u<Esc>[s1z=`]<`>a<C-g>u", { noremap = true })
