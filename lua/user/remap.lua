local nnoremap = require("user.keymap").nnoremap
local _map = require("user.keymap")._map
local tnoremap = require("user.keymap").tnoremap


-- disable arrow keys
_map('<up>', '<nop>')
_map('<down>', '<nop>')
_map('<left>', '<nop>')
_map('<right>', '<nop>')

nnoremap("<leader>c", "nohl<CR>")  -- clear search highlighting 
nnoremap("<leader>r", ":so %<CR>") -- reload config
nnoremap("<leader>s", ":w<CR>")  -- fast save file
nnoremap("<leader>pv", "<cmd>Ex<CR>") -- open netw
nnoremap("<leader>Q", ":qa!<CR>") -- cloase all windows ( without saving )
nnoremap("<leader>q", ":wqa<CR>") -- cloase all windows ( saving )
