local nnoremap = require("user.keymap").nnoremap
local tnoremap = require("user.keymap").tnoremap
-- local _map = require("user.keymap")._map
-- local vnoremap = require("user.keymap").vnoremap

nnoremap("<leader>p", "nohl<CR>")        -- clear search highlighting
nnoremap("<leader>r", ":so %<CR>")       -- reload config
nnoremap("<leader>s", ":w<CR>")          -- fast save file
nnoremap("<leader>pv", "<cmd>Ex<CR>")    -- open netw
nnoremap("<C-q>", ":wqa<CR>")        -- cloase all windows ( saving )

-- Better Window Navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")
nnoremap("<C-n>", ":NvimTreeToggle<CR>")

-- Resize window with arrow keys
--[[nnoremap("<C-Up>", ":resize -2<CR>")  
nnoremap("<C-Down>", ":resize +2<CR>")  
nnoremap("<C-Left>", ":vertical resize -2<CR>")  
nnoremap("<C-Right>", ":vetical resize +3<CR>")  ]]--

-- Telescope
nnoremap("<C-f>" , "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<CR>")
--nnoremap("<C-f>" , "<cmd>Telescope live_grep<CR>")

-- cycle buffers
nnoremap("L", ":BufferLineCycleNext<CR>")
nnoremap("H", ":BufferLineCyclePrev<CR>")

