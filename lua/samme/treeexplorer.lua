require("nvim-tree").setup()


vim.keymap.set('n', '<Leader>t', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
