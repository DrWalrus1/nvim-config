-- init.lua:
return {
  'd7omdev/nuget.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  ft = { 'cs', 'csharp', 'csproj', 'sln', 'slnx' },
  config = function()
    require('nuget').setup()
  end,
}
