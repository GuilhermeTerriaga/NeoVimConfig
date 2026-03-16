# Neovim config

My neovim config!


# Usage

Great for Python, Go, Elixir and Js coding

## 📦 Complete Plugin List

Here is every plugin included in this configuration, organized by category.

### 🎛️ Plugin Manager
| Plugin | Description |
| :----- | :---------- |
| **[folke/lazy.nvim](https://github.com/folke/lazy.nvim)** | Modern plugin manager with lazy-loading for fast startup. |

### 🎨 Appearance & Interface
| Plugin | Description |
| :----- | :---------- |
| **[romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)** | A sophisticated buffer line (tab bar) with tabs and buffer management. |
| **[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** | Blazing fast and configurable statusline. |
| **[folke/noice.nvim](https://github.com/folke/noice.nvim)** | Replaces the UI for messages, cmdline, and popups with a modern interface. |
| **[rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)** | Fancy notification window for Neovim. |
| **[startup-nvim/startup.nvim](https://github.com/startup-nvim/startup.nvim)** | A highly configurable startup screen. |
| **[folke/which-key.nvim](https://github.com/folke/which-key.nvim)** | Displays a popup with possible keybindings as you type. |
| **[lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)** | Shows indentation guides. |
| **[nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)** | Adds file icons to various plugins. |
| **[declancm/cinnamon.nvim](https://github.com/declancm/cinnamon.nvim)** | Smooth scrolling for Neovim. |

### 🎨 Colorscheme
| Plugin | Description |
| :----- | :---------- |
| **[ayu-colors/ayu-vim](https://github.com/ayu-colors/ayu-vim)** | The `ayu` colorscheme, providing a soothing and modern color palette. |

### ⚡ Autocompletion & Snippets
| Plugin | Description |
| :----- | :---------- |
| **[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** | The core autocompletion engine. |
| **[hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)** | Completion source for buffer words. |
| **[hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)** | LSP completion source for `nvim-cmp`. |
| **[hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)** | Completion source for file paths. |
| **[saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)** | LuaSnip completion source for `nvim-cmp`. |
| **[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)** | A powerful snippet engine written in Lua. |
| **[rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)** | A collection of pre-configured snippets for various languages. |
| **[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)** | Automatically closes brackets, quotes, and other pairs. |

### 🛠️ LSP & Mason (Language Server Protocol)
| Plugin | Description |
| :----- | :---------- |
| **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)** | Portable package manager for LSP servers, DAP servers, linters, and formatters. |
| **[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)** | Bridges Mason with `nvim-lspconfig` for easy server setup. |
| **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** | A collection of configurations for the built-in LSP client. |
| **[nvimtools/none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)** | Use Neovim as a language server to inject LSP diagnostics, code actions, and more via external tools. |
| **[nvimtools/none-ls-extras.nvim](https://github.com/nvimtools/none-ls-extras.nvim)** | Extra sources and utilities for `none-ls.nvim`. |

### 🐛 Debugging (DAP)
| Plugin | Description |
| :----- | :---------- |
| **[mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)** | A Debug Adapter Protocol client. |
| **[rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)** | A UI for `nvim-dap`. |
| **[leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)** | Go (Delve) integration for `nvim-dap`. |
| **[mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python)** | Python debugger integration for `nvim-dap`. |
| **[jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)** | Bridges Mason with `nvim-dap` to manage debug adapters. |
| **[rcarriga/nvim-nio](https://github.com/rcarriga/nvim-nio)** | A library for asynchronous IO in Neovim, used by `nvim-dap-ui`. |

### 🌳 Treesitter
| Plugin | Description |
| :----- | :---------- |
| **[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** | Advanced syntax highlighting, incremental selection, and more. |

### 🔧 Git Integration
| Plugin | Description |
| :----- | :---------- |
| **[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** | Git decorations (signs, hunks, blame) in the signcolumn. |
| **[akinsho/git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim)** | Helps resolve Git merge conflicts. |

### 📂 File Explorer & Navigation
| Plugin | Description |
| :----- | :---------- |
| **[nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)** | A file explorer with a modern UI and many features. |
| **[MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)** | UI component library used by neo-tree and others. |
| **[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)** | Highly extensible fuzzy finder over lists. |
| **[nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)** | File browser extension for Telescope. |
| **[nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)** | Telescope extension to replace `vim.ui.select` with a Telescope picker. |
| **[debugloop/telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim)** | Visualize and navigate the undo tree with Telescope. |
| **[nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)** | Lua utility functions, required by Telescope and others. |
| **[s1n7ax/nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)** | A plugin to pick a window and perform actions on it. |

### 🧪 Testing
| Plugin | Description |
| :----- | :---------- |
| **[nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)** | A framework for interacting with tests within Neovim. |
| **[nvim-neotest/neotest-elixir](https://github.com/nvim-neotest/neotest-elixir)** | Elixir adapter for Neotest. |
| **[nvim-neotest/neotest-python](https://github.com/nvim-neotest/neotest-python)** | Python adapter for Neotest. |
| **[antoinemadec/FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim)** | Fixes CursorHold events, often used as a dependency for Neotest. |

### 🧩 Utilities
| Plugin | Description |
| :----- | :---------- |
| **[echasnovski/mini.nvim](https://github.com/echasnovski/mini.nvim)** | A collection of small, independent, and useful modules (e.g., `mini.ai`, `mini.surround`, etc.). |
| **[juanelas/csvview.nvim](https://github.com/juanelas/csvview.nvim)** | A plugin to handle and view CSV files with table alignment. |
| **[folke/trouble.nvim](https://github.com/folke/trouble.nvim)** | A pretty diagnostic list to help you manage errors and warnings. |

## 💾 Installation

Follow these simple steps to get started:

1. **Backup your existing configuration**
2. Just clone the repo and place it on .config/nvim/
