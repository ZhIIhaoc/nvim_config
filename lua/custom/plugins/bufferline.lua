return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  opts = {
    options = {
      mode = 'buffers', -- or "buffers" if you prefer bufferline
      show_close_icon = false,
      show_buffer_close_icons = false,
      separator_style = 'slant', -- or "thin" | "padded_slant" | "slope"
      always_show_bufferline = true,
      diagnostics = 'nvim_lsp',
      hover = {
        enabled = true,
        delay = 200,
        reveal = { 'close' },
      },
    },
  },
}
