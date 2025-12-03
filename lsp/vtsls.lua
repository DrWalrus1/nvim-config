local vue_language_server_path = vim.fn.expand '$MASON/packages' .. '/vue-language-server' .. '/node_modules/@vue/language-server'
local vue_plugin = {
  name = '@vue/typescript-plugin',
  location = vue_language_server_path,
  languages = { 'vue' },
  configNamespace = 'typescript',
}
return {
  cmd = { 'vtsls', '--stdio' },
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
