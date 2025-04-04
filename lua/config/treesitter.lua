require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua",
    "python",
    "bash",
    "json",
    "html",
    "css",
    "javascript",
    "typescript",
    "markdown",
    "vim",
    "yaml",
	"sql",
  },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },
})

