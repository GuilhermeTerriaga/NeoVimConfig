return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-neotest/neotest-python",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python"),
      },
    })
    local wk = require("which-key")
    wk.add({
      -- Neotest related mappings
      {
        "<leader>t",
        group = "🧪 Test",
        nowait = true,
        remap = false,
      },
      {
        "<leader>tr",
        "<cmd>lua require('neotest').run.run()<cr>",
        desc = "Run nearest test",
      },
      {
        "<leader>tf",
        "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
        desc = "Run current file",
      },
      {
        "<leader>ta",
        "<cmd>lua require('neotest').run.run({ suite = true })<cr>",
        desc = "Run all tests",
      },
      {
        "<leader>td",
        "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
        desc = "Debug nearest test",
      },
      {
        "<leader>ts",
        "<cmd>lua require('neotest').run.stop()<cr>",
        desc = "Stop test",
      },
      {
        "<leader>tn",
        "<cmd>lua require('neotest').run.attach()<cr>",
        desc = "Attach to nearest test",
      },
      {
        "<leader>to",
        "<cmd>lua require('neotest').output.open()<cr>",
        desc = "Show test output",
      },
      {
        "<leader>tp",
        "<cmd>lua require('neotest').output_panel.toggle()<cr>",
        desc = "Toggle output panel",
      },
      {
        "<leader>tv",
        "<cmd>lua require('neotest').summary.toggle()<cr>",
        desc = "Toggle summary",
      },
      {
        "<leader>tc",
        "<cmd>lua require('neotest').run.run({ suite = true, env = { CI = true } })<cr>",
        desc = "Run all tests with CI",
      },
    })
  end,
}
