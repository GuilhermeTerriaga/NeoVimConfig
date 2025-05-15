local lsps = { "lua_ls", "elixirls", "flux_lsp", "marksman", "jedi_language_server", "jdtls", "gopls", "eslint" }
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = lsps,
				automatic_enable = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			require("mason-lspconfig").setup({
				-- The first entry (without a key) will be the default handler
				-- and will be called for each installed server that doesn't have
				-- a dedicated handler.
				function(server_name) -- default handler (optional)
					lspconfig[server_name].setup({})
				end,
				-- Next, you can provide a dedicated handler for specific servers.
				-- For example, a handler override for the `rust_analyzer`:
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Lsp hover" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
		end,
	},
}
