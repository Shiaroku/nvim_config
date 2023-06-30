-- General options
vim.opt.clipboard = 'unnamedplus'                       -- use system clipboard
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' } -- configure completion options
vim.opt.mouse = 'a'                                     -- allow the mouse to be used

-- Indenting
vim.opt.tabstop = 4      -- number of visual spaces per tab
vim.opt.softtabstop = 4  -- number of spaces in a tab when editing
vim.opt.shiftwidth = 4   -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs as spaces, primarly for Python

-- Navigation
vim.opt.number = true         -- show the absolute number of the current line
vim.opt.relativenumber = true -- treat other lines as relative to current
vim.opt.cursorline = true     -- highlight the current line horizontally
vim.opt.splitbelow = true     -- open new vertical splits at the bottom
vim.opt.splitright = true     -- open new horizontal splits on the right

-- Searching
vim.opt.incsearch = true  -- search as characters are entered
vim.opt.hlsearch = false  -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true  -- but make it case sensitive if an uppercase is entered
