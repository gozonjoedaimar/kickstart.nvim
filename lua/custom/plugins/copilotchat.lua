return {
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'canary',
  dependencies = {
    { 'github/copilot.vim' },
    { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
  },
  opts = {
    debug = true, -- Enable debugging
    -- See Configuration section for rest
  },
  -- See Commands section for default commands if you want to lazy load on them
  keys = {
    {
      '<leader>ccq',
      function()
        local input = vim.fn.input 'Quick Chat: '
        if input ~= '' then
          require('CopilotChat').ask(input, { selection = require('CopilotChat.select').buffer })
        end
      end,
      desc = 'CopilotChat - Quick chat',
    },
  },
}
