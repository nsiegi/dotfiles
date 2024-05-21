return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    opts = {},
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_tool_installer = require("mason-tool-installer")

        mason.setup()

        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "phpactor",
                "volar",
                "pyright",
                "tsserver",
                "svelte",
                "sqlls",
                "gopls",
                "cssls",
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
            },
        })
    end,
}
