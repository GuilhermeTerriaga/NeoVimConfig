return {
	"akinsho/git-conflict.nvim",
	version = "*",
	config = function()
		require("git-conflict").setup({
			default_mappings = false,
		})
		vim.keymap.set("n", "co", "git-conflict-ours", { desc = "Git conflict ours" })
		vim.keymap.set("n", "ct", "git-conflict-theirs", { desc = "Git conflict theirs" })
		vim.keymap.set("n", "cb", "git-conflict-both", { desc = "Git Conflict both" })
		vim.keymap.set("n", "c0", "git-conflict-none", { desc = "Git conflict none" })
		vim.keymap.set("n", "[x", "git-conflict-prev-conflict", { desc = "Git conflict prev conflict" })
		vim.keymap.set("n", "]x", "git-conflict-next-conflict", { desc = "Git conflict next conflict" })
	end, --
	--   vim.api.nvim_create_autocmd("User", {
	-- 		pattern = "GitConflictDetected",
	-- 		callback = function()
	-- 			vim.notify("Conflict detected in " .. vim.fn.expand("<afile>"))
	-- 			vim.keymap.set("n", "cww", function()
	-- 				engage.conflict_buster()
	-- 				create_buffer_local_mappings()
	-- 			end)
	-- 		end,
	-- 	}),
}
