return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			go = { "golines" },
			elixir = { "mix" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			["*"] = { "trim_whitespace" },
			["_"] = { "trim_whitespace" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
	keys = {
		{
			"<leader>F",
			function()
				require("conform").format({ async = false, lsp_fallback = true })
			end,
			desc = "Format",
		},
	},
}
