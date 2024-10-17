vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move command
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste without losing current copy
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set('t', '<C-n>', '<C-\\><C-n>')

vim.keymap.set("n", "-", "<CMD>Ex<CR>", { desc = "Open parent directory" })

-- exit terminal mode
vim.keymap.set('t', "<C-n>", "<C-\\><C-n>")
