-- Leader key
vim.g.mapleader = ' ' -- set space as the leader key

-- Common options
local opts = {
    noremap = true, -- non-recursive
    silent = true,  -- do not show message
}

-- Commands
vim.cmd('cnoreabbrev init luafile $MYVIMRC') -- remap ':init' to refresh the config file

vim.keymap.set('n', '<Leader>n', ':NERDTreeFocus<CR>', opts)
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>', opts)
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>', opts)
