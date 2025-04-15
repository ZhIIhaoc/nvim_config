return {
  'ojroques/nvim-osc52',
  config = function()
    require('osc52').setup()
    vim.keymap.set('v', '<leader>c', require('osc52').copy_visual, { desc = 'Copy to system clipboard' })
  end,
}
