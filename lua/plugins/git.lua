return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    require("git-conflict").setup({
      default_mappings = true,
    })
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
