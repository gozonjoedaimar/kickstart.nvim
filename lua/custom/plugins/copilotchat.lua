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
    window = {
      layout = 'float',
      width = 0.8,
      height = 0.8,
    },
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
    -- Show help actions with telescope
    {
      '<leader>cch',
      function()
        local actions = require 'CopilotChat.actions'
        require('CopilotChat.integrations.telescope').pick(actions.help_actions())
      end,
      desc = 'CopilotChat - Help actions',
    },
    -- Show prompts actions with telescope
    {
      '<leader>ccp',
      function()
        local actions = require 'CopilotChat.actions'
        require('CopilotChat.integrations.telescope').pick(actions.prompt_actions())
      end,
      desc = 'CopilotChat - Prompt actions',
    },
  },
}
