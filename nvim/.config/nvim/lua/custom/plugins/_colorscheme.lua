return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
            term_colors = true,
        })
        vim.cmd("colorscheme catppuccin-mocha")
    end,
}
