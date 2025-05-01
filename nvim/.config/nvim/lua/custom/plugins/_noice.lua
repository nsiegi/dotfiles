return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        lsp = {
            documentation = {
                view = "hover",
                opts = { -- lsp_docs settings
                    lang = "markdown",
                    replace = true,
                    render = "plain",
                    format = { "{message}" },
                    position = { row = 2, col = 2 },
                    size = {
                        max_width = 0.8 * vim.api.nvim_win_get_width(0),
                        max_height = 15,
                    },
                    border = {
                        style = "rounded",
                    },
                    win_options = {
                        concealcursor = "n",
                        conceallevel = 3,
                        winhighlight = {
                            Normal = "CmpPmenu",
                            FloatBorder = "DiagnosticSignInfo",
                        },
                    },
                },
            },
        },
        views = {
            mini = {
                win_options = {
                    winblend = 0,
                },
            },
        },
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
    },
}
