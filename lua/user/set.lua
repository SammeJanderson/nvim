local g = vim.g
local opt = vim.opt

-------------------------------
-- General`
-------------------------------
opt.mouse = "a"               -- Enable mouse support
opt.clipboard = "unnamedplus" -- Copy/Paste to system clipboard
opt.swapfile = false          -- disable swap file
g.mapleader = " "	      

-------------------------------
-- UI
-------------------------------
opt.number = true
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

-------------------------------
-- Indent
-------------------------------
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true


-------------------------------
-- Performance
-------------------------------
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 250
opt.updatetime = 200
