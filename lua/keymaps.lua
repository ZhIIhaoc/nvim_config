local map = vim.keymap.set

local opts = { noremap = true, silent = true }

-- nvim tree 
map("n", "<C-T>", ":NvimTreeToggle<CR>", opts)


-- Move lines
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("i", "<A-j>", "<Esc>:m+<CR>==gi", opts)
map("i", "<A-k>", "<Esc>:m-2<CR>==gi", opts)
map("v", "<A-j>", ":m'>+<CR>gv=gv", opts)
map("v", "<A-k>", ":m-2<CR>gv=gv", opts)

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

-- Tab management with <leader>z
map("n", "<leader>zn", ":tabnew<CR>", opts, { desc = "New tab" })
map("n", "<leader>zc", ":tabclose<CR>", opts, { desc = "Close tab" })
map("n", "<leader>zl", ":tabnext<CR>", opts, { desc = "Next tab" })
map("n", "<leader>zh", ":tabprevious<CR>", opts, { desc = "Previous tab" })

-- diagostics
map("n", "gl", vim.diagnostic.open_float, opts, { desc = "Show diagnostics under cursor" })


map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
