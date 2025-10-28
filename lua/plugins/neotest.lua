--- @type LazySpec
return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      {
        'nvim-treesitter/nvim-treesitter', -- Optional, but recommended
        branch = 'main', -- NOTE; not the master branch!
        build = function()
          vim.cmd ':TSUpdate go'
        end,
      },
      {
        'fredrikaverpil/neotest-golang',
        version = '*', -- Optional, but recommended; track releases
        build = function()
          vim.system({ 'go', 'install', 'gotest.tools/gotestsum@latest' }):wait() -- Optional, but recommended
        end,
      },
    },
    config = function()
      local neotest = require 'neotest'
      local config = {
        runner = 'gotestsum', -- Optional, but recommended
      }
      neotest.setup {
        adapters = {
          require 'neotest-golang'(config),
        },
      }

      vim.keymap.set('n', '<leader>tt', function()
        neotest.run.run()
      end, { desc = 'Debug: Start/Continue' })
    end,
  },
}
