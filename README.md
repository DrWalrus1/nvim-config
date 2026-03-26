# Dr Walrus's nvim config

A modular Neovim configuration built on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim), using [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager.

## Language Support

| Language | LSP | Debugger | Tests | Notes |
|---|---|---|---|---|
| Go | ✓ | Delve | neotest-golang / gotestsum | |
| C# / .NET | ✓ | netcoredbg | — | easy-dotnet, custom DLL path resolution |
| TypeScript / JavaScript | vtsls | — | — | |
| Vue | vue_ls + vtsls | — | — | |
| Terraform | terraformls | — | — | |
| Lua | lua_ls | — | — | |
| HTML / CSS | — | — | — | 2-space indent |
| Rust | — | — | — | RustLsp code actions |

## Plugins

### Editor
- **[tokyonight.nvim](https://github.com/folke/tokyonight.nvim)** — colorscheme (night variant)
- **[mini.nvim](https://github.com/echasnovski/mini.nvim)** — textobjects, surround, statusline
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** — syntax highlighting and parsing with context
- **[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)** — indentation guides
- **[dressing.nvim](https://github.com/stevearc/dressing.nvim)** — improved UI for inputs and selects
- **[which-key.nvim](https://github.com/folke/which-key.nvim)** — keymap popup hints

### Navigation
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** — fuzzy finder (files, grep, LSP, git)
- **[oil.nvim](https://github.com/stevearc/oil.nvim)** — file browser as a buffer
- **[neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** — file system tree
- **[harpoon](https://github.com/ThePrimeagen/harpoon)** — quick file jumping

### LSP & Completion
- **[mason.nvim](https://github.com/williamboman/mason.nvim)** — LSP/DAP/linter installer
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** — completion engine (LSP, snippets, paths)
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** — snippet engine
- **[lazydev.nvim](https://github.com/folke/lazydev.nvim)** — Lua dev completions for Neovim config
- **[nvim-autopairs](https://github.com/windwp/nvim-autopairs)** — auto-close brackets and quotes
- **[conform.nvim](https://github.com/stevearc/conform.nvim)** — formatting (stylua, format-on-save)
- **[nvim-lint](https://github.com/mfussenegger/nvim-lint)** — linting (markdownlint)
- **[fidget.nvim](https://github.com/j-hui/fidget.nvim)** — LSP progress notifications

### Debugging
- **[nvim-dap](https://github.com/mfussenegger/nvim-dap)** — debug adapter protocol client
- **[nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)** — debugger UI
- **[nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)** — inline variable values
- **[nvim-dap-go](https://github.com/leoluz/nvim-dap-go)** — Go debug adapter (Delve)

### Testing
- **[neotest](https://github.com/nvim-neotest/neotest)** — test runner framework
- **[neotest-golang](https://github.com/fredrikaverpil/neotest-golang)** — Go test adapter (gotestsum)

### Git
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** — gutter signs, hunk staging/reset
- **[vim-fugitive](https://github.com/tpope/vim-fugitive)** — Git integration
- **[vim-rhubarb](https://github.com/tpope/vim-rhubarb)** — GitHub support for fugitive

### Misc
- **[GitHub Copilot](https://github.com/zbirenbaum/copilot.lua)** + CopilotChat — AI completions and chat
- **[auto-session](https://github.com/rmagatti/auto-session)** — session persistence with breakpoint restore
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** — floating/split terminal
- **[easy-dotnet.nvim](https://github.com/GustavEikaas/easy-dotnet.nvim)** — .NET project management
- **[hardtime.nvim](https://github.com/m4xshen/hardtime.nvim)** — break bad Vim habits
- **[quicker.nvim](https://github.com/stevearc/quicker.nvim)** — enhanced quickfix UI
- **[dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)** — startup screen

## Keymaps

Leader key: `<space>`

### LSP

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `gr` | Go to references |
| `gI` | Go to implementation |
| `gD` | Go to declaration |
| `<leader>D` | Type definition |
| `<leader>ds` | Document symbols |
| `<leader>ws` | Workspace symbols |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `K` | Hover documentation |
| `<leader>th` | Toggle inlay hints |

### Diagnostics

| Key | Action |
|---|---|
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>e` | Show diagnostic float |
| `<leader>q` | Diagnostics quickfix list |
| `<leader>da` | All diagnostics in quickfix |

### Testing

| Key | Action |
|---|---|
| `<leader>tt` | Run nearest test |
| `<leader>tf` | Run test file |
| `<leader>td` | Debug nearest test (DAP) |
| `<leader>ts` | Toggle test summary |
| `<leader>to` | Show test output |
| `<leader>tp` | Toggle test output panel |

### Debugging

| Key | Action |
|---|---|
| `<F5>` | Start / continue |
| `<F10>` | Terminate |
| `<F7>` | Toggle DAP UI |
| `<leader>b` | Toggle breakpoint |
| `<leader>B` | Conditional breakpoint |
| `<leader>di` | Step into |
| `<leader>dw` | Step over |
| `<leader>do` | Step out |

### Git (Gitsigns)

| Key | Action |
|---|---|
| `]c` / `[c` | Next / previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hu` | Undo stage hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>hd` | Diff against index |
| `<leader>tb` | Toggle line blame |

### Telescope

| Key | Action |
|---|---|
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Search word under cursor |
| `<leader><leader>` | Find open buffers |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Recent files |
| `<leader>sh` | Help tags |
| `<leader>sk` | Keymaps |
| `<leader>sd` | Diagnostics |
| `<leader>/` | Fuzzy search current buffer |
| `<leader>s/` | Grep open files |
| `<leader>sn` | Search nvim config |

### Navigation & Files

| Key | Action |
|---|---|
| `-` | Open Oil (parent directory) |
| `\` | Toggle Neo-tree |
| `<leader>pv` | Open Oil (project view) |
| `<C-h/j/k/l>` | Focus split window |

### Editor

| Key | Action |
|---|---|
| `<leader>f` | Format buffer |
| `<leader>ya` | Yank all to clipboard |
| `<leader>bd` | Close buffer |
| `<leader>aa` | Toggle CopilotChat |
| `` <C-`> `` | Toggle terminal |

### Tabs

| Key | Action |
|---|---|
| `<leader>tN` | New tab |
| `<leader>tn` | Next tab |
| `<leader>tc` | Close tab |

### Sessions

| Key | Action |
|---|---|
| `<leader>wr` | Search sessions |
| `<leader>ws` | Save session |
| `<leader>wa` | Toggle autosave |

## Structure

```
.
├── init.lua                  # Entry point
└── lua/
    ├── vimoptions.lua        # Vim options and basic keymaps
    ├── keymaps.lua           # Global keymaps
    ├── autocmd.lua           # Autocommands and LSP keymaps
    ├── lsp.lua               # LSP setup and diagnostics config
    ├── config/
    │   ├── lazy.lua          # Plugin manager bootstrap
    │   └── nvim-dap-dotnet.lua  # .NET debug utilities
    ├── core/                 # Core features (git, format, navigation, visuals, sessions)
    ├── plugins/              # Plugin configurations
    │   └── csharp/           # C#/.NET specific plugins
    ├── kickstart/plugins/    # Kickstart-derived plugins
    ├── custom/plugins/       # Local extensions
    └── after/
        ├── lsp/              # Per-language LSP config
        └── ftplugin/         # Filetype-specific settings
```
