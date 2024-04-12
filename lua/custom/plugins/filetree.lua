-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>Ex', '<cmd>Neotree toggle<cr>', desc = 'Toggle Neotree' },
    { '<leader>Ef', '<cmd>Neotree reveal<cr>', desc = 'Reveal in Neotree' },
  },
  config = function()
    require('neo-tree').setup {}
  end,
}
