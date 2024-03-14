local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

vim.keymap.set("n", "<leader>dt", dapui.toggle, { desc = "[D]ap UI [T]oggle" })
vim.keymap.set("n", "<leader>de", dapui.eval, { desc = "[D]ebug [E]val" })
vim.keymap.set("n", "<leader>dr", dap.continue, { desc = "[D]ebug [R]un/Continue" })
vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, { desc = "Dap [B]reakpoint" })

