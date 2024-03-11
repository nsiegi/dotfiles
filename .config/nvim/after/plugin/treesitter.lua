require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "lua", "javascript", "php", "python", "vue", "svelte", "phpdoc", "yaml"
    },
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
        disable = { "vimdoc" }
    },
    indent = {
        enable = true
    },
    incremental_selection = {
        enable = true
    }
})

