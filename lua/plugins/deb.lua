return {
	{
		"mfussenegger/nvim-dap",
		lazy = true,
		config = function()
			local dap = require("dap")

			dap.adapters.lldb = {
				type = "executable",
				command = "lldb-vscode",
				name = "lldb",
			}

			dap.configurations.cpp = {
				{
					name = "Launch",
					type = "lldb",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
					args = {},
				},
			}

			dap.configurations.c = dap.configurations.cpp -- Use the same configurations for C
		end,
	},
}
