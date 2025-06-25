return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "leoluz/nvim-dap-go",
    "jay-babu/mason-nvim-dap.nvim",
    "mfussenegger/nvim-dap-python",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")
    -- setups
    require("dap-go").setup()
    require("dapui").setup()
    require("dap-python").setup("python3")
    require("mason-nvim-dap").setup({
      ensure_installed = { "python" },
      handlers = {},
      automatic_installation = {
        -- These will be configured by separate plugins.
        exclude = {
          "delve",
        },
      },
    })
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    -- dap.listeners.before.event_terminated.dapui_config = function()
    -- 	dapui.close()
    -- end
    -- dap.listeners.before.event_exited.dapui_config = function()
    -- 	dapui.close()
    -- end
    vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Debug Continue" })
    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
    vim.keymap.set("n", "<F5>", require("dap").continue)
    vim.keymap.set("n", "<F10>", require("dap").step_over)
    vim.keymap.set("n", "<F11>", require("dap").step_into)
    vim.keymap.set("n", "<F12>", require("dap").step_out)
  end,
}
