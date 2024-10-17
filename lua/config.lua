local g = vim.g
local opt = vim.opt

g.mapleader = " "
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.swapfile = false

opt.number = true
opt.relativenumber = true
opt.showmatch = true
opt.foldmethod = 'marker'
opt.colorcolumn = '120'
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.linebreak = true
opt.termguicolors = true
opt.laststatus=3
opt.cursorline = true

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.hidden = true
opt.hlsearch = false

opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 250
opt.updatetime = 200

opt.signcolumn = "yes"

vim.cmd [[colorscheme lackluster-mint]]
