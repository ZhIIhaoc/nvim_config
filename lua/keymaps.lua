local map = vim.keymap.set

local opts = { noremap = true, silent = true }

-- Move lines
map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("i", "<A-j>", "<Esc>:m+<CR>==gi", opts)
map("i", "<A-k>", "<Esc>:m-2<CR>==gi", opts)
map("v", "<A-j>", ":m'>+<CR>gv=gv", opts)
map("v", "<A-k>", ":m-2<CR>gv=gv", opts)
-- resize
map("n", "<A-Up>",    ":resize -2<CR>", opts)
map("n", "<A-Down>",  ":resize +2<CR>", opts)
map("n", "<A-Left>",  ":vertical resize -2<CR>", opts)
map("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Window movement
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>ji", opts)				-- addition i for insert mode 
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)
-- Leader shortcuts
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)
map("n", "<leader>t", "<C-w><C-s>:resize +10<CR><C-w><C-w>:terminal<CR>i", opts) -- call terminal and insert
-- Clear highlights
map("n", "<leader>n", ":nohlsearch<CR>", opts, { desc = "nohlsearch" } )
-- delete current buffer
map("n", "<leader>e", ":bp | bd #<CR>", opts, { desc = "Delete current buffer and move to next" })
-- nvim tree 
map("n", "<leader>p", ":NvimTreeToggle<CR>", opts)
-- -- Tab management with <leader>z
-- map("n", "<leader>zn", ":tabnew<CR>", opts, { desc = "New tab" })
-- map("n", "<leader>zc", ":tabclose<CR>", opts, { desc = "Close tab" })
-- map("n", "<leader>zl", ":tabnext<CR>", opts, { desc = "Next tab" })
-- map("n", "<leader>zh", ":tabprevious<CR>", opts, { desc = "Previous tab" })


-- Terminal escape
map("t", "<Esc>", [[<C-\><C-n><C-w>k]], opts)
-- Stay in indent mode in visual mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
-- Paste without overwriting clipboard
map("x", "p", '"_dP', opts)
-- diagostics
map("n", "gl", vim.diagnostic.open_float, opts, { desc = "Show diagnostics under cursor" })
-- buffer
map("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
-- Scroll but keep cursor centered
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzz", opts)
map("n", "N", "Nzz", opts)
map("n", "G", "Gzz", opts)


