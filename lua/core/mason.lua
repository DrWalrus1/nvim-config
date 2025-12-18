return {
  {
    'mason-org/mason.nvim',
    config = true,
  }, -- NOTE: Must be loaded before dependants
  { 'WhoIsSethDaniel/mason-tool-installer.nvim' }, -- Useful status updates for LSP.
  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
    },
    opts = {
      ensure_installed = { 'lua_ls', 'vtsls', 'netcoredbg', 'omnisharp', 'htmx' },
      automatic_installation = true,
    },
  },
}
