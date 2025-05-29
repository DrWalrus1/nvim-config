return {
  loadoptions = function()
    local set = vim.opt

    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '
    vim.keymap.set('n', '<leader>pv', '<CMD>Oil<CR>', { desc = '[P]roject [V]iew' })
    vim.keymap.set('n', '<leader>tN', vim.cmd.tabnew, { desc = '[T]ab [N]ew' })
    vim.keymap.set('n', '<leader>tn', vim.cmd.tabNext, { desc = '[T]ab [n]ext' })
    vim.keymap.set('n', '<leader>tp', vim.cmd.tabprevious, { desc = '[T]ab [P]revious' })
    vim.keymap.set('n', '<leader>tc', vim.cmd.tabclose, { desc = '[T]ab [C]lose' })
    vim.keymap.set('n', '<leader>ya', ':%y+<CR>', { desc = '[Y]ank [A]ll lines to system clipboard' })

    vim.g.netrw_banner = 0
    -- Set to true if you have a Nerd Font installed and selected in the terminal
    vim.g.have_nerd_font = true

    -- [[ Setting options ]]
    -- See `:help vim.opt`
    -- NOTE: You can change these options as you wish!
    --  For more options, you can see `:help option-list`
    set.shiftwidth = 2
    set.tabstop = 2
    set.lbr = true

    -- Make line numbers default
    set.number = true
    set.relativenumber = true

    -- Enable mouse mode, can be useful for resizing splits for example!
    set.mouse = 'a'

    -- Don't show the mode, since it's already in the status line
    set.showmode = false

    -- Sync clipboard between OS and Neovim.
    --  Remove this option if you want your OS clipboard to remain independent.
    --  See `:help 'clipboard'`
    set.clipboard = 'unnamedplus'

    -- Enable break indent
    set.breakindent = true

    -- Save undo history
    set.undofile = true

    -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
    set.ignorecase = true
    set.smartcase = true

    -- Keep signcolumn on by default
    set.signcolumn = 'yes'

    -- Decrease update time
    set.updatetime = 250

    -- Decrease mapped sequence wait time
    -- Displays which-key popup sooner
    set.timeoutlen = 300

    -- Configure how new splits should be opened
    set.splitright = true
    set.splitbelow = true

    -- Sets how neovim will display certain whitespace characters in the editor.
    --  See `:help 'list'`
    --  and `:help 'listchars'`
    set.list = true
    set.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

    -- Preview substitutions live, as you type!
    set.inccommand = 'split'

    -- Show which line your cursor is on
    set.cursorline = true

    -- Minimal number of screen lines to keep above and below the cursor.
    set.scrolloff = 10
  end,
}
