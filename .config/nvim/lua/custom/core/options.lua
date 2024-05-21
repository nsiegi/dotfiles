vim.cmd("let g:netrw_liststyle = 3")

-- disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.number = true
vim.opt.relativenumber  = true
vim.opt.syntax = "ON"
vim.opt.scrolloff = 10
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.fillchars = "eob: "

-- Disable leader timeout
vim.opt.timeout = false
-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help "list"`
--  and `:help "listchars"`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.virtualedit = "block"
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
