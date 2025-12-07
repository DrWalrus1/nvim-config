return {
  'rmagatti/auto-session',
  lazy = false,
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { '<leader>wr', '<cmd>AutoSession search<CR>', desc = 'Session search' },
    { '<leader>ws', '<cmd>AutoSession save<CR>', desc = 'Save session' },
    { '<leader>wa', '<cmd>AutoSession toggle<CR>', desc = 'Toggle autosave' },
  },
  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    -- log_level = 'debug',
    session_lens = {
      picker = nil, -- "telescope"|"snacks"|"fzf"|"select"|nil Pickers are detected automatically but you can also manually choose one. Falls back to vim.ui.select
      mappings = {
        -- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
        delete_session = { 'i', '<C-d>' },
        alternate_session = { 'i', '<C-s>' },
        copy_session = { 'i', '<C-y>' },
      },
    },
    git_use_branch_name = true,
    save_extra_data = function(_)
      local ok, breakpoints = pcall(require, 'dap.breakpoints')
      if not ok or not breakpoints then
        return
      end

      local bps = {}
      local breakpoints_by_buf = breakpoints.get()
      for buf, buf_bps in pairs(breakpoints_by_buf) do
        bps[vim.api.nvim_buf_get_name(buf)] = buf_bps
      end
      if vim.tbl_isempty(bps) then
        return
      end
      local extra_data = {
        breakpoints = bps,
      }
      return vim.fn.json_encode(extra_data)
    end,

    restore_extra_data = function(_, extra_data)
      local json = vim.fn.json_decode(extra_data)

      if json.breakpoints then
        local ok, breakpoints = pcall(require, 'dap.breakpoints')

        if not ok or not breakpoints then
          vim.notify 'dap.breakpoints not found, skipping breakpoint restore'
          return
        end
        vim.notify 'restoring breakpoints'
        for buf_name, buf_bps in pairs(json.breakpoints) do
          for _, bp in pairs(buf_bps) do
            local line = bp.line
            local opts = {
              condition = bp.condition,
              log_message = bp.logMessage,
              hit_condition = bp.hitCondition,
            }
            breakpoints.set(opts, vim.fn.bufnr(buf_name), line)
          end
        end
      end
    end,
  },
}
