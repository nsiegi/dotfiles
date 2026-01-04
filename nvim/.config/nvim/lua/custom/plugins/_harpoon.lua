return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "[E]dit Harpoon buffers"})
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "[A]dd buffer to Harpoon", silent = true})
    end
}
