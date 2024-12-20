--- @type LazySpec
return {
  'apple/pkl-neovim',
  lazy = true,
  ft = 'pkl',
  dependencies = {
    {
      'nvim-treesitter/nvim-treesitter',
      build = function(_)
        vim.cmd 'TSUpdate'
      end,
    },
    'L3MON4D3/LuaSnip',
  },
  build = function()
    require('pkl-neovim.internal').init()

    -- Set up syntax highlighting.
    vim.cmd 'TSInstall! pkl'
  end,
  config = function()
    -- Set up snippets.
    require('luasnip.loaders.from_snipmate').lazy_load()
  end,
}