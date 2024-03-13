local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    pickers = {
        buffers = {
            theme = "dropdown",
        }
    },
})

telescope.load_extension("file_browser")
telescope.load_extension("fzf")
telescope.load_extension("media_files")
telescope.load_extension("packer")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: [F]ind [F]iles" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: [F]ind [B]uffers" })
vim.keymap.set("n", "<leader>ht", builtin.help_tags, { desc = "Telescope: [H]elp [T]ags" })
vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Telescope: [G]it [F]iles" })
vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, { desc = "LSP: [G]oto [D]efinition" })
vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "LSP: [G]oto [R]eferences" })
vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "LSP: [D]ocument [S]ymbols" })
vim.keymap.set("n", "<leader>ws", builtin.lsp_dynamic_workspace_symbols, { desc = "LSP: [W]orkspace [S]ymbols" })
