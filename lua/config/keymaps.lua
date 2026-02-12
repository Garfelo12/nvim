local map = vim.keymap.set

map("n","<Space>","",{})
vim.g.mapleader = " "

map("i", "jk",          "<Esc>",    { noremap = true, silent = true })
map("x", "jk",          "<Esc>",    { noremap = true, silent = true })
map("n", "<leader>e",   ":Ex<CR>",  { noremap = true, silent = true })
map("n", "<leader>w",   ":w<CR>",   { noremap = true, silent = true })
map("n", "<leader>wq",  ":wq<CR>",  { noremap = true, silent = true })
map("n", "<leader>wqa", ":wqa<CR>", { noremap = true, silent = true })
map("n", "<leader>q",   ":q<CR>",   { noremap = true, silent = true })
map("n", "<leader>qq",  ":q!<CR>",  { noremap = true, silent = true })
map("n", "<leader>qqa", ":qa!<CR>", { noremap = true, silent = true })

map("n", "<C-j>", "10j", { noremap = true, silent = true })
map("n", "<C-j>", "10j", { noremap = true, silent = true })
map("v", "<C-j>", "10j", { noremap = true, silent = true })
map("v", "<C-k>", "10k", { noremap = true, silent = true })
map("x", "<C-k>", "10k", { noremap = true, silent = true })
map("x", "<C-k>", "10k", { noremap = true, silent = true })

-- Training
map("n", "<Esc>", "<Nop>", { noremap = true, silent = true })
map({ "n", "i", "v" }, "<Up>", "<Nop>", opts)
map({ "n", "i", "v" }, "<Down>", "<Nop>", opts)
map({ "n", "i", "v" }, "<Left>", "<Nop>", opts)
map({ "n", "i", "v" }, "<Right>", "<Nop>", opts)

-- Trouble
map("n", "<leader>xx", function() require("trouble").toggle() end)
map("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
map("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
map("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
map("n", "<leader>xl", function() require("trouble").toggle("loclist") end)

-- LuaSnip
map({"i"}, "<C-K>",      function() require("luasnip").expand() end, {silent = true})
map({"i", "s"}, "<C-L>", function() require("luasnip").jump( 1) end, {silent = true})
map({"i", "s"}, "<C-J>", function() require("luasnip").jump(-1) end, {silent = true})
map({"i", "s"}, "<C-E>", function()
	if require("luasnip").choice_active() then
		require("luasnip").change_choice(1)
	end
end, {silent = true})

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>",      { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>",       { desc = "Grep text" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>",         { desc = "List buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>",       { desc = "Help tags" })

-- Window layout
map("n", "<C-w><C-t>", "<Cmd>VentanaTranspose<CR>")
map("n", "<C-w><C-f>", "<Cmd>VentanaShift<CR>")
map("n", "<C-w>f",     "<Cmd>VentanaShiftMaintainLinear<CR>")

-- Align
map("x", "ga", "<Plug>(EasyAlign)", { noremap = false })
map("n", "ga", "<Plug>(EasyAlign)", { noremap = false })
