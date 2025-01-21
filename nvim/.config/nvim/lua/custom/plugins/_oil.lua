return {
    "stevearc/oil.nvim",
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-web-devicons").setup()
        require("oil").setup({
            view_options = {
                show_hidden = true
            }
        })
    end
}
