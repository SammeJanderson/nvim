local opts = {noremap = true, silent = true}
local lsppath='~/.config/nvim/lua/samme/lsp.lua'

vim.keymap.set('n','<Leader>hp' ,':!cat ' .. lsppath .. ' | grep vim.keymap.set <CR>' , opts )
vim.keymap.set('t','<Esc>' ,'<C-\\><C-n>' , opts )
