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

      ---@diagnostic disable-next-line: missing-fields
      neotest.setup {
        adapters = {
          require 'neotest-golang'(config),
        },
      }

      vim.keymap.set('n', '<leader>tt', function()
        neotest.run.run()
      end, { desc = 'Run closest [T]est' })
      vim.keymap.set('n', '<leader>tf', function()
        neotest.run.run(vim.fn.expand '%')
      end, { desc = 'Run Test File' })

      vim.keymap.set('n', '<leader>ts', function()
        neotest.summary.toggle()
      end, { desc = 'Show [T]est [S]ummary' })
      vim.keymap.set('n', '<leader>to', function()
        neotest.output.open()
      end, { desc = 'Show [T]est [O]utput' })
      vim.keymap.set('n', '<leader>tp', function()
        neotest.output_panel.toggle()
      end, { desc = 'Show [T]est output [p]anel' })
    end,
  },
}
