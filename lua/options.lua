vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd('set guicursor="" ')
vim.cmd("syntax on")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.cmd("set cursorline")
vim.cmd("set nowrap")
vim.cmd("set listchars=eol:⏎,tab:>-,trail:·,extends:>,precedes:<,space:.")
vim.cmd("set list")
local map = vim.keymap.set
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

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

--lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })
-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
-- save file
map({ "n", "v", "s", "x", "i" }, "<C-s>", "<Cmd>w<CR><Esc>", { desc = "Save File" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- diagnostic
local diagnostic_goto = function(next, severity)
	local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
	severity = severity and vim.diagnostic.severity[severity] or nil
	return function()
		go({ severity = severity })
	end
end
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- spell
map("n", "<leader>sle", function()
	vim.cmd("set spell")
	vim.cmd("set spelllang=en")
	vim.cmd("echo 'Spell language set to English'")
end, { desc = "Set language to English" })

map("n", "<leader>slp", function()
	vim.cmd("set spell")
	vim.cmd("set spelllang=pt_br")
	vim.cmd("echo 'Spell language set to Portuguese'")
end, { desc = "Set language to Portuguese" })
