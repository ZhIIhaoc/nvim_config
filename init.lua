vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("settings")
require("keymaps")
require("plugins")
require("autocomplete")
require("lsp")
vim.cmd.colorscheme "catppuccin"
