local language_server_path = vim.fn.expand '$MASON/packages' .. '/lua-language-server/' .. 'lua-language-server'

return {
  cmd = {
    language_server_path,
  },
  filetypes = {
    'lua',
  },
  root_markers = {
    '.git',
    '.luacheckrc',
    '.luarc.json',
    '.luarc.jsonc',
    '.stylua.toml',
    'selene.toml',
    'selene.yml',
    'stylua.toml',
  },
  settings = {
    Lua = {
      diagnostics = {
        disable = { 'missing-parameters', 'missing-fields' },
      },
    },
  },

  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
