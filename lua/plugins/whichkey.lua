return {
  "folke/which-key.nvim",
  lazy = true,
  event = "VeryLazy",

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
