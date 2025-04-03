local map = vim.keymap.set

local opts = { noremap = true, silent = true }

-- nvim tree 
map("n", "<C-T>", ":NvimTreeOpen<CR>", opts)


-- Move lines
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)

-- Window movement
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>ji", opts)				-- addition i for insert mode 
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)

-- Terminal escape
map("t", "<Esc>", [[<C-\><C-n><C-w>k]], opts)

-- Leader shortcuts
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>u", ":resize +2<CR>", opts)
map("n", "<leader>d", ":resize -2<CR>", opts)
map("n", "<leader>t", "<C-w><C-s>:resize +10<CR><C-w><C-w>:terminal<CR>i", opts) -- call terminal and insert

