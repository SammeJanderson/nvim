
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})

vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set('n', '<C-f>', builtin.grep_string)

vim.keymap.set('n', '<C-s>', function()
    builtin.grep_string({search = ""})
end)


