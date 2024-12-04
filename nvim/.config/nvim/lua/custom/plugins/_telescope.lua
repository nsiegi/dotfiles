return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                file_ignore_patterns = { "node_modules" },
                path_display = { "truncate" },
            },
            pickers = {
                find_files = {
                    hidden = true,
                    file_ignore_patterns = { ".git" },
                },
                file_browser = {
                    hidden = true,
                },
                buffers = {
                    theme = "dropdown",
                    initial_mode = "normal",
                    sorting_strategy = "descending",
                },
            },
        })

        telescope.load_extension("fzf")
        telescope.load_extension("noice")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: [F]ind [F]iles" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: [F]ind [B]uffers" })
        vim.keymap.set("n", "<leader>ht", builtin.help_tags, { desc = "Telescope: [H]elp [T]ags" })
        vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Telescope: [G]it [F]iles" })
        vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Telescope: [L]ive [G]rep" })
        vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, { desc = "LSP: [G]oto [D]efinition" })
        vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "LSP: [G]oto [R]eferences" })
        vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "LSP: [D]ocument [S]ymbols" })
        vim.keymap.set("n", "<leader>f.", builtin.oldfiles, { desc = "Telescope: [F]ind Recent Files" })
        vim.keymap.set("n", "<leader>fr", builtin.resume, { desc = "Telescope: [F]ind [R]esume" })
        vim.keymap.set(
            "n",
            "<leader>ws",
            builtin.lsp_dynamic_workspace_symbols,
            { desc = "LSP: [W]orkspace [S]ymbols" }
        )
    end,
}
