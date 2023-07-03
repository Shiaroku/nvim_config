require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "r", "python" },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    -- Add additional configurations for R language
    r = {
        -- Add any specific configuration for the R language parser
    },
    -- Add additional configurations for Python language
    python = {
        -- Add any specific configuration for the Python language parser
    },
}
