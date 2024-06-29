return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
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
