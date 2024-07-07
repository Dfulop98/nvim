return {
  'romgrk/barbar.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    local barbar = require 'barbar'
    barbar.setup {
      clickable = true,
      tabpages = false,
      insert_at_end = true,
      icons = {
        button = 'x',
        buffer_index = true,
        filetype = { enabled = true },
        visible = { modified = { buffer_number = false } },
        gitsigns = {
          added = { enabled = true, icon = '+' },
          changed = { enabled = true, icon = '~' },
          deleted = { enabled = treu, icon = '-' },
        },
      },
    }
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
  end,
}
