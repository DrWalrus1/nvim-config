--- @type LazySpec
return { -- Fuzzy Finder (files, lsp, etc)
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup()

    vim.keymap.set({ 'n', 't' }, '<C-`>', '<Cmd>ToggleTerm<CR>', {
      noremap = true,
      silent = true,
      desc = 'Toggle Terminal',
    })
  end,
}
