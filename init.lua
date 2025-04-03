vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("settings")
require("keymaps")
require("plugins")
require("autocomplete")
require("lsp")
require("config.treesitter")
vim.cmd.colorscheme "catppuccin"
