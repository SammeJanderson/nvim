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

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
nnoremap('<C-t>', ':Term<CR>', { noremap = true })  -- open
tnoremap('<Esc>', '<C-\\><C-n>')                    -- exit

-- Tree explorer
nnoremap('<C-n>', ':NvimTreeToggle<CR>')            -- open/close
nnoremap('<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
nnoremap('<leader>m', ':NvimTreeFindFile<CR>')      -- search file

-- Tag bar
nnoremap('<leader>z', ':TagbarToggle<CR>')          -- open/close
