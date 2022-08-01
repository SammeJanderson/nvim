require("nvim-tree").setup({
      open_on_setup = true,
      open_on_setup_file = true,
      open_on_tab = true,

})

vim.keymap.set('n', '<Leader>t', ':NvimTreeToggle<CR>', {noremap=true, silent=true})
