-- Leader key
vim.g.mapleader = ' ' -- set space as the leader key

-- Common options
local opts = {
    noremap = true, -- non-recursive
    silent = true,  -- do not show message
}

-- Commands
vim.cmd('cnoreabbrev init luafile $MYVIMRC') -- remap ':init' to refresh the config file


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
