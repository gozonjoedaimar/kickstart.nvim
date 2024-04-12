-- File: lua/custom/plugins/undotree.lua

return {
  'mbbill/undotree',
  keys = {
    {
      '<leader>du',
      function()
        vim.cmd 'UndotreeToggle'
        vim.cmd 'UndotreeFocus'
      end,
      desc = 'Toggle undotree',
    },
  },
}
