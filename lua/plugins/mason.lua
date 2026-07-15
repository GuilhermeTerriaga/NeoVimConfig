local lsps = {
  "lua_ls",
  "marksman",
  "jedi_language_server",
  "jdtls",
  "stylua",
  "gopls",
  "eslint",
  "ruff",
  "ts_ls",
}

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp", },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      require("mason-lspconfig").setup({
        ensure_installed = lsps,
        handlers = {
          -- Default handler: every server not listed below
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities,
            })
          end,

          -- Ruff precisa de init_options específicos
          ["ruff"] = function()
            lspconfig.ruff.setup({
              capabilities = capabilities,
              init_options = {
                settings = {},
              },
            })
          end,

          -- jdtls normalmente exige config extra (como o lombok)
          ["jdtls"] = function()
            lspconfig.jdtls.setup({
              capabilities = capabilities,
              -- Adicione aqui cmd, root_dir, etc. se necessário
            })
          end,
        },
      })

      -- Keymaps globais (funcionam para qualquer buffer com LSP ativo)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
      vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer" })
    end,
  },
}
