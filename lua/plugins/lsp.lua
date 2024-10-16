return {
	-- MASON
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"clangd",
			})
		end,
	},
	-- LSP Servers
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
			---@type lspconfig.options
			servers = {
				clangd = {
					cmd = {
						"/usr/bin/clangd",
						"--background-index",
						"--pch-storage=memory",
						"--all-scopes-completion",
						"--pretty",
						"--header-insertion=never",
						"-j=4",
						"--inlay-hints",
						"--header-insertion-decorators",
						"--function-arg-placeholders",
						"--completion-style=detailed",
					},
					filetypes = { "c", "cpp", "objc", "objcpp" },
					root_dir = require("lspconfig").util.root_pattern("src"),
					on_attach = function(client, bufnr)
						client.server_capabilities.documentFormattingProvider = false
					end,
				},
			},
			setup = {},
		},
	},
	-- CMP (Completion)
	{
		"nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })
			vim.o.pumheight = 100
		end,
	},
}
