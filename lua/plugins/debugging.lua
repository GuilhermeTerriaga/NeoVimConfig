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
		require("dap-python").setup("debugpy-adapter")

		table.insert(require("dap").configurations.python, {
			justMyCode = false,
			type = "python",
			request = "launch",
			name = "debug file",
			program = "${file}",
			pythonPath = function()
				local venv_path = os.getenv("VIRTUAL_ENV")
				if venv_path then
					return venv_path .. "/bin/python"
				end
				return "/usr/bin/python3"
			end,
		})

		require("mason-nvim-dap").setup({
			automatic_installation = {
				exclude = { "delve", "python" },
			},
		})

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}", --let both ports be the same for now...
			executable = {
				command = "node",
				args = {
					vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
					"${port}",
				},
				-- command = "js-debug-adapter",
				-- args = { "${port}" },
			},
		}
		dap.configurations.javascript = {
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch file",
				program = "${file}",
				cwd = "${workspaceFolder}",
				sourceMaps = true,
				protocol = "inspector",
			},
			{
				type = "pwa-node",
				request = "launch",
				name = "Launch with args",
				program = "${file}",
				args = function()
					local args = vim.fn.input("Arguments: ")
					return vim.split(args, " ")
				end,
				sourceMaps = true,
				protocol = "inspector",
				cwd = "${workspaceFolder}",
			},
			{
				type = "pwa-node",
				request = "attach",
				name = "Attach to process",
				processId = require("dap.utils").pick_process,
				cwd = "${workspaceFolder}",
			},
		}

		dap.configurations.typescript = dap.configurations.javascript
		dap.configurations.typescriptreact = dap.configurations.javascript
		dap.configurations.javascriptreact = dap.configurations.javascript

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end

		vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Debug Continue" })
		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
		vim.keymap.set("n", "<Leader>de", require("dapui").close, { desc = "Dap Close" })
		vim.keymap.set("n", "<F5>", require("dap").continue)
		vim.keymap.set("n", "<F10>", require("dap").step_over)
		vim.keymap.set("n", "<F11>", require("dap").step_into)
		vim.keymap.set("n", "<F12>", require("dap").step_out)
	end,
}
