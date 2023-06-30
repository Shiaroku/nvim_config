local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    -- Check if packer.nvim is already installed
    if fn.empty(fn.glob(install_path)) > 0 then
        -- Clone packer.nvim repository if not installed
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        -- Load packer.nvim as a plugin
        vim.cmd.packadd('packer.nvim')
        -- Return true to indicate successful installation
        return true
    end
    -- Return false if packer.nvim is already installed
    return false
end

-- Invoke the function to ensure packer.nvim is installed and loaded
local packer_bootstrap = ensure_packer()

---------------------------------------------------------------------------
-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

---------------------------------------------------------------------------
-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies".
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin

return require('packer').startup(function(use)
    -- Plugin manager itself
    use 'wbthomason/packer.nvim'

    -- Colorscheme
    use 'rose-pine/neovim'

    -- Syntax Highlighting
    use 'nvim-treesitter/nvim-treesitter'

    -- Linter
    use 'dense-analysis/ale'

    -- File navigation
    use 'preservim/nerdtree'

    -- GIT
    use 'tpope/vim-fugitive'

    -- GIT helper
    use 'itchyny/lightline.vim'

    -- Surroundings
    use 'tpope/vim-surround'

    -- Debugging
    use 'puremourning/vimspector'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
