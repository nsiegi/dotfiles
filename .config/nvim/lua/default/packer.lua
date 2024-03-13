-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use { "wbthomason/packer.nvim" } -- Package manager

    use { "catppuccin/nvim", as = "catppuccin"}
    use { "folke/todo-comments.nvim", requires = { "nvim-lua/plenary.nvim" }, config = function() require("todo-comments").setup() end } -- Highlight TODO, FIXME etc
    use { "folke/trouble.nvim", config = function() require("trouble").setup() end } -- Shows diagnostics in code
    use { "lewis6991/gitsigns.nvim", config = function() require('gitsigns').setup() end } -- Git info on the left column
    use { "nvim-treesitter/nvim-treesitter" } -- Syntax highlighter
    use { "windwp/nvim-autopairs", config = function () require("nvim-autopairs").setup({}) end } -- Automaticaly close {[()]}
    use { "lukas-reineke/indent-blankline.nvim", config = function () require("ibl").setup() end } -- This plugin adds indentation guides to neovim
    use { "folke/which-key.nvim", config = function() require("which-key").setup({}) end } -- Shows help for keybindings

    -- Telescope
    use { "nvim-telescope/telescope.nvim", requires = { {"nvim-lua/plenary.nvim"} } } -- Best navigation tool ever
    use { "nvim-telescope/telescope-file-browser.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } } -- File browser extension for Telescope
    use { "nvim-telescope/telescope-fzf-native.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }, run = "make" } -- Fuzzy finder extension for Telescope
    use { "nvim-telescope/telescope-media-files.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } } -- Media files preview extension for Telescope
    use { "nvim-telescope/telescope-packer.nvim", requires = { "nvim-telescope/telescope.nvim" } } -- Packer extension ofr Telescope

    use { "nvim-tree/nvim-web-devicons", config = function () require('nvim-web-devicons').setup({}) end } -- Popular font with icons
    use { "prichrd/netrw.nvim", config = function() require("netrw").setup({ use_devicons = true }) end } -- Default file tree view
    use { "mbbill/undotree", config = function() require("which-key").setup({}) end } -- Tree with change history
    use { "j-hui/fidget.nvim", config = function () require("fidget") .setup({}) end } -- Notifications widget
    use { "smjonas/inc-rename.nvim", config = function () require("inc_rename").setup() end } -- Allow to rename symbol definitions
    use { "folke/neodev.nvim", config = function() require("neodev").setup() end } -- Documentation for lua lang
    use { "smiteshp/nvim-navic", requires = {"neovim/nvim-lspconfig"} } -- Plugin that allows to use statusline and topline of neo vim
    use { "utilyre/barbecue.nvim", after = "nvim-web-devicons", config = function () require("barbecue").setup({ theme = "catppuccin-frappe" }) end } -- Breadcrumbs
    use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" }, config = function () require("lualine").setup({}) end }  -- Statusbar at bottom
    use { 'jrop/jq.nvim' }

    use { "christoomey/vim-tmux-navigator" } -- Tmux seemless integration

    use { "williamboman/mason.nvim" } -- UI packages manager
    use { "williamboman/mason-lspconfig.nvim" }

    -- Debugging
    use { "mfussenegger/nvim-dap" }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" }, config = function () require("dapui").setup() end }

    -- Autocompletion
    use { "neovim/nvim-lspconfig" } -- Manager for lsp servers
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-path" }
    use { "hrsh7th/cmp-cmdline" }
    use { "hrsh7th/cmp-buffer" }
    use { "hrsh7th/cmp-nvim-lsp-signature-help" }
    use { "l3mon4d3/luasnip" }
    use { "saadparwaiz1/cmp_luasnip" }
    use { "hrsh7th/nvim-cmp" }
end)

