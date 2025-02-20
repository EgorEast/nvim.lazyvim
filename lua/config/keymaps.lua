-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

--map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })

-- Trouble

--map("n", "<leader>qx", "<cmd>TroubleToggle<CR>", { desc = "Open Trouble" })
--map("n", "<leader>qw", "<cmd>TroubleToggle workspace_diagnostics<CR>", { desc = "Open Workspace Trouble" })
--map("n", "<leader>qd", "<cmd>TroubleToggle document_diagnostics<CR>", { desc = "Open Document Trouble" })
--map("n", "<leader>qq", "<cmd>TroubleToggle quickfix<CR>", { desc = "Open Quickfix" })
--map("n", "<leader>ql", "<cmd>TroubleToggle loclist<CR>", { desc = "Open Location List" })
--map("n", "<leader>qt", "<cmd>TodoTrouble<CR>", { desc = "Open Todo Trouble" })

-- Tests
map("n", "<leader>tt", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end, { desc = "Run file test" })
map("n", "<leader>tw", function()
  require("neotest").watch.toggle()
end, { desc = "Watch file test" })
map("n", "<leader>to", ":Neotest output<CR>", { desc = "Show test output" })
map("n", "<leader>tp", ":Neotest output-panel<CR>", { desc = "Show test output panel" })
map("n", "<leader>ts", ":Neotest summary<CR>", { desc = "Show test summary" })

-- Debug
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle Debug UI" })
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
map("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "Start" })
map("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "Step Over" })

-- Live Share
map("n", "<leader>ls", ":LiveShareServer<CR>", { desc = "Start a Live Share server" })
map("n", "<leader>lj", ":LiveShareJoin", { desc = "Join a Live Share session" })

map("n", "<leader>lf", ":!eslint_d % --fix<CR>", { desc = "Eslint fix current buffer" })

map("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Comment
map("n", "<leader>c/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>c/", "gc", { desc = "toggle comment", remap = true })
