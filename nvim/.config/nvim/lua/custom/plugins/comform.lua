return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort" },
        },
        format_on_save = {
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
        },
    },
}
