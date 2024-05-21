local mason_lsp = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

require("luasnip.loaders.from_vscode").lazy_load()

local ensure_installed = { "lua_ls", "phpactor", "volar", "pyright", "tsserver", "svelte", "sqlls", "gopls", "cssls" }
local capabilities = cmp_nvim_lsp.default_capabilities()

mason_lsp.setup({
    ensure_installed = ensure_installed
})

for _, value in ipairs(ensure_installed) do
    lspconfig[value].setup({capabilities = capabilities})
end

lspconfig.lua_ls.setup({
    capabilities = capabilities,
    Lua = {
        diagnostics = {
            globals = {"vim"}
        }
    }
})
