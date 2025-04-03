-- local setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "ryanoasis/vim-devicons" },                    -- icons
  { "tpope/vim-surround" },                        -- ysw)
  { "tpope/vim-commentary" },                      -- gcc, gc
  { "ap/vim-css-color" },                          -- CSS color preview
  { "rafi/awesome-vim-colorschemes" },             -- jellybeans
  { "tpope/vim-fugitive" },                        -- git

  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- nerd tree
  {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
  },											

  -- lualine
  {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = require("config.lualine"),
  },

  {
  "folke/tokyonight.nvim",
  priority = 1000,
  lazy = false,
  },




  -- Completion engine
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },

  -- Snippets
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "neovim/nvim-lspconfig" },
})

