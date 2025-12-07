-- AI-related plugins configuration for Neovim
return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    opts = {
      -- See Configuration section for options
    },
    keys = {
      {
        '<leader>aa',
        function()
          return require('CopilotChat').toggle()
        end,
        desc = 'Toggle (CopilotChat)',
        mode = { 'n', 'x' },
      },
    },
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot', -- Define the command to load the plugin
    event = 'InsertEnter', -- Load on entering insert mode
    config = function()
      require('copilot').setup {
        -- Your Copilot configuration options here
        -- For example:
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = '<C-j>',
            next = '<C-n>',
            prev = '<C-p>',
            dismiss = '<C-k>',
          },
        },
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            open = '<M-CR>',
            quit = 'q',
            jump_prev = '[[',
            jump_next = ']]',
          },
        },
      }
    end,
  },
  {
    'zbirenbaum/copilot-cmp',
    after = { 'copilot.lua' }, -- Ensure copilot.lua is loaded first
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}
