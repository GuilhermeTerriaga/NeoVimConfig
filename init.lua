vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set guicursor=\"\" ")
vim.cmd("syntax on")
vim.g.mapleader=" "

require("config.lazy")
require("mini.icons").setup()
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', ':Neotree toggle show left<CR>', {})

