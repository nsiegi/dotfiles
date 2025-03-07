vim.g.mapleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<NOP>")
vim.keymap.set("n", "W", ":wa<CR>", { desc = "[W]rite All Files", silent = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open Oil directory" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Selected Line Up" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Selected Line Down" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent selected and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent selected and keep selection" })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "[Y]ank Selected Into OS Clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "[P]aste Selected From OS Clipboard" })

-- Open lazygit in separate tmux window below editor
vim.keymap.set("n", "<leader>gg", ":!tmux splitw -c " .. vim.fn.getcwd() .. " -- lazygit \\; resize-pane -Z<CR>", { silent = true })

vim.keymap.set({ "i" }, "C", "C")
