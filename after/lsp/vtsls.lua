-- [[
--    Because Vue also requires a typescript language server to be run. Alter the config of vtsls to run on vue files using the vue plugin
-- ]]
local vtsls_path = vim.fn.expand '$MASON/packages' .. '/vtsls' .. '/node_modules/@vtsls/language-server/bin/vtsls.js'
local vue_language_server_path = vim.fn.expand '$MASON/packages' .. '/vue-language-server' .. '/node_modules/@vue/language-server'
local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = vue_language_server_path,
  languages = { 'vue' },
  configNamespace = 'typescript',
}
return {
  cmd = { vtsls_path, '--stdio' },
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx',
    'vue',
  },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' },
  single_file_support = true,
  settings = {
    typescript = {
      updateImportsOnFileMove = 'always',
    },
    javascript = {
      updateImportsOnFileMove = 'always',
    },
    vtsls = {
      enableMoveToFileCodeAction = true,
      tsserver = {
        globalPlugins = {
          vue_plugin,
        },
      },
    },
  },
}
