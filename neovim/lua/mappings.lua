require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- INFO: For moving the lines
map("n", "<A-j>", ":m .+1<CR>==", {desc = "Move line up(n)"}) -- move line up(n)
map("n", "<A-k>", ":m .-2<CR>==", {desc = "Move line down(n)"}) -- move line down(n)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", {desc = "Move line up(v)"}) -- move line up(v)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", {desc = "Move line down(v)"}) -- move line down(v)

map("n", "<A-Down>", ":m .+1<CR>==", {desc = "Move line up(n)"}) -- move line up(n)
map("n", "<A-Up>", ":m .-2<CR>==", {desc = "Move line down(n)"}) -- move line down(n)
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", {desc = "Move line up(v)"}) -- move line up(v)
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", {desc = "Move line down(v)"}) -- move line down(v)


-- INFO: For Neotest
map("n", "<leader>ts", ":Neotest summary<CR>", {desc = "Toggle Neotest Summary"})
map("n", "<leader>to", ":Neotest output<CR>", {desc = "Toggle Neotest Output"})
map("n", "<leader>tp", ":Neotest output-panel toggle<CR>", {desc = "Toggle Neotest Output Pannel"})
map("n", "<leader>tr", ":Neotest run<CR>", {desc = "Run nearest test with Neotest"})
map("n", "<leader>tf", ":Neotest run file<CR>", {desc = "Run all tests in file with Neotest"})
map("n", "<leader>tc", ":Neotest stop<CR>", {desc = "Stop Neotest"})
map("n", "<leader>td", function() require("neotest").run.run({strategy = "dap"}) end, {desc = "Run nearest test with DAP & Neotest"} )
map("n", "<leader>ta", function() require("neotest").run.attach() end, {desc = "Attach to nearest test with Neotest"} )
map("n", "<leader>tv", function() require("neotest").output.open({enter = true}) end, {desc = "Toggle Neotest Output for a test"})


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
