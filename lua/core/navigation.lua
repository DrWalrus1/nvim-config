return {
  { 'ThePrimeagen/harpoon' },
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').add {

        { '', group = '[W]orkspace' },
        { '', group = 'Git [H]unk' },
        { '', group = '[R]ename' },
        { '', group = '[S]earch' },
        { '', group = '[D]ocument' },
        { '', group = '[C]ode' },
        { '', group = '[T]oggle' },
        { '', desc = '<leader>h', mode = 'v' },

        -- { '<leader>w_', hidden = true },
        -- Visual mode
        { '<leader>h', desc = 'Git [H]unk', mode = 'v', prefix = '' },
      }
    end,
  },
}
