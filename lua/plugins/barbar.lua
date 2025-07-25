return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	opts = {
		-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		-- animation = true,
		-- insert_at_start = true,
		-- …etc.
	},

	init = function()
		vim.g.barbar_auto_setup = false
		local wk = require("which-key")
		wk.add({
			{
				"<leader>b",
				group = "📄 Buffers",
				nowait = true,
				remap = false,
			},
		})
	end,
}
