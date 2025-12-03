return {
  {
    'mason-org/mason.nvim',
    config = true,
  }, -- NOTE: Must be loaded before dependants
  { 'WhoIsSethDaniel/mason-tool-installer.nvim' }, -- Useful status updates for LSP.
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = { 'lua_ls', 'html', 'htmx', 'cssls', 'gopls', 'jsonls', 'vue_ls' },
      automatic_installation = true,
    },
  },
}
