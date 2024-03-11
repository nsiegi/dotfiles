local cmp = require("cmp")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local navic = require("nvim-navic")
local lspconfig = require("lspconfig")

local ensure_installed = { "lua_ls", "phpactor", "volar", "pyright", "tsserver", "svelte", "sqlls" }

mason.setup()
mason_lsp.setup({
    ensure_installed = ensure_installed
})

cmp.setup({
    completion = {
        completeopt = "menu,menuone,noinsert",
    },
    sources = {
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    },
    mapping = cmp.mapping.preset.insert({
        ["C-b"] = cmp.mapping.scroll_docs(-4),
        ["C-f"] = cmp.mapping.scroll_docs(4),
        ["C-y"] = cmp.mapping.confirm({ select = true }),
        ["C-e"] = cmp.mapping.complete(),
    }),
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
})
cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = "buffer" }
    }
})
cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = "path" },
        { name = "cmdline" },
    })
})

local capabilities = cmp_nvim_lsp.default_capabilities()

for _, value in ipairs(ensure_installed) do
    lspconfig[value].setup({capabilities = capabilities})
end

lspconfig.lua_ls.settings = {
    Lua = {
        diagnostics = {
            globals = {"vim"}
        }
    }
}

navic.setup({})

