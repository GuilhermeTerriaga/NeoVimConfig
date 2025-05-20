vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd('set guicursor="" ')
vim.cmd("syntax on")
vim.cmd("set number")
vim.g.mapleader = " "
vim.cmd("set cursorline")
vim.cmd("set nowrap")

local map = vim.api.nvim_set_keymap
-- Barbar configs que eu não consegui botar no arquivo certo pois sou noob ou muito maluco
-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", {})
map("n", "<A-.>", "<Cmd>BufferNext<CR>", {})
-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", {})
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", {})
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", {})
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", {})
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", {})
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", {})
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", {})
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", {})
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", {})
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", {})
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", {})
map("n", "<A-0>", "<Cmd>BufferLast<CR>", {})
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", {})
-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", {})
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map("n", "<leader>bf", "<Cmd>BufferPick<CR>", {})
-- Sort automatically by...
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", {})
map("n", "<leader>bn", "<Cmd>BufferOrderByName<CR>", {})
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", {})
map("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", {})
map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", {})
map("n", "<leader>bc", "<Cmd>BufferClose<CR>", {})
-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
