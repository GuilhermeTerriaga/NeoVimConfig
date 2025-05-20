return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  opts = {},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          show_hidden_count = true,
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            ".github",
            "package-lock.json",
            ".git",
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>n", ":Neotree toggle show left focus<CR>", {})
  end,
}
