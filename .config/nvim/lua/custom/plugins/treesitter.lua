return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({
            ensure_installed = {
                "lua", "javascript", "php", "python", "svelte", "phpdoc", "yaml", "css", "scss"
            },
            modules = {},
            ignore_install = {},
            sync_install = false,
            auto_install = true,
            -- enable syntax highlighting
            highlight = {
                enable = true,
                disable = { "vimdoc" },
            },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
                enable = true,
            },
            -- enable indentation
            indent = { enable = true },
            incremental_selection = {
                enable = true
            }
        })
    end
}
