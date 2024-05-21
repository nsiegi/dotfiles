-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use { "wbthomason/packer.nvim" } -- Package manager

    use { "nvim-lua/plenary.nvim" }
    use { "catppuccin/nvim", as = "catppuccin"} -- The most bbeautiful theme ever
    use { "nvim-tree/nvim-web-devicons", config = function() require('nvim-web-devicons').setup({}) end } -- Popular font with icons
    use { "tpope/vim-commentary" } -- Comment out code
    use { "tpope/vim-surround" } -- Surround tool
    use { "christoomey/vim-tmux-navigator" } -- Tmux seemless integration

    use { "rmagatti/auto-session" }
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
    use { "folke/todo-comments.nvim", requires = { "nvim-lua/plenary.nvim" } }
    use { "folke/which-key.nvim" }
    use { "windwp/nvim-autopairs" }
    use { "utilyre/barbecue.nvim", after = "nvim-web-devicons" }

    use { "folke/trouble.nvim", config = function() require("trouble").setup() end } -- Shows diagnostics in code
    use { "lewis6991/gitsigns.nvim", config = function() require('gitsigns').setup() end } -- Git info on the left column
    use { "lukas-reineke/indent-blankline.nvim", config = function () require("ibl").setup() end } -- This plugin adds indentation guides to neovim

    -- Telescope
    use { "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } }
    use { "nvim-telescope/telescope-file-browser.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } } -- File browser extension for Telescope
    use { "nvim-telescope/telescope-fzf-native.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }, run = "make" } -- Fuzzy finder extension for Telescope
    use { "nvim-telescope/telescope-media-files.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } } -- Media files preview extension for Telescope
    use { "nvim-telescope/telescope-packer.nvim", requires = { "nvim-telescope/telescope.nvim" } } -- Packer extension ofr Telescope

    use { "kdheepak/lazygit.nvim", event = "VimEnter", require = { "nvim-lua/plenary.nvim" } }
    use { "nvim-tree/nvim-tree.lua", config = function () require("nvim-tree").setup({ view = { width = 45 } }) end }
    use { "stevearc/oil.nvim", config = function() require("oil").setup() end }

    use { "prichrd/netrw.nvim", config = function() require("netrw").setup({ use_devicons = true }) end } -- Default file tree view
    use { "mbbill/undotree", event = "VimEnter" } -- Tree with change history
    use { "j-hui/fidget.nvim", config = function () require("fidget") .setup({}) end } -- Notifications widget
    use { "folke/neodev.nvim", event = "VimEnter", config = function() require("neodev").setup() end } -- Documentation for lua lang
    use { "smiteshp/nvim-navic", requires = {"neovim/nvim-lspconfig"}, config = function () require("nvim-navic").setup({}) end } -- Plugin that allows to use statusline and topline of neo vim
    use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" }, config = function () require("lualine").setup({}) end }  -- Statusbar at bottom
    use { 'jrop/jq.nvim', event = "VimEnter" }


    use { "williamboman/mason.nvim", config = function () require("mason").setup() end } -- UI packages manager
    use { "williamboman/mason-lspconfig.nvim" }

    -- Debugging
    use { "mfussenegger/nvim-dap" }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use { "nvim-neotest/nvim-nio" }

    use { "folke/noice.nvim", requires = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" }, config = function() require("noice").setup() end }

    -- Database manager
    use { "kristijanhusak/vim-dadbod-ui", requires = { "tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion" } }

    -- Autocompletion
    use { "neovim/nvim-lspconfig" }
    use { "hrsh7th/nvim-cmp" }
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-cmdline" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-nvim-lsp-signature-help" }
    use { "l3mon4d3/luasnip" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "rafamadriz/friendly-snippets" }
end)

