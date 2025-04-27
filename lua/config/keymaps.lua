-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- resize
vim.keymap.set("n", "<A-Up>", "<Cmd>resize -2<CR>", { desc = "horizontal size down" })
vim.keymap.set("n", "<A-Down>", "<Cmd>resize +2<CR>", { desc = "horizontal size up" })
vim.keymap.set("n", "<A-Left>", "<Cmd>vertical resize -2<CR>", { desc = "vertical size down" })
vim.keymap.set("n", "<A-Right>", "<Cmd>vertical resize +2<CR>", { desc = "vertical size up" })

vim.keymap.set("t", "<A-Up>", "<Cmd>resize -2<CR>", { desc = "horizontal size down" })
vim.keymap.set("t", "<A-Down>", "<Cmd>resize +2<CR>", { desc = "horizontal size up" })
vim.keymap.set("t", "<A-Left>", "<Cmd>vertical resize -2<CR>", { desc = "vertical size down" })
vim.keymap.set("t", "<A-Right>", "<Cmd>vertical resize +2<CR>", { desc = "vertical size up" })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>fT", function()
  Snacks.terminal()
  vim.cmd("resize -4")
end, { desc = "Terminal (cwd)" })
vim.keymap.set("n", "<leader>ft", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
  vim.cmd("resize -4")
end, { desc = "Terminal (Root Dir)" })
