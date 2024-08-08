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
    { '<leader>Ex', '<cmd>Neotree reveal<cr>', desc = 'Show/Reveal Neotree' },
  },
  config = function()
    require('neo-tree').setup {
      event_handlers = {
        {
          event = 'file_open_requested',
          handler = function()
            -- auto close
            -- vimc.cmd 'Neotree close'
            -- OR
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    }
  end,
}
