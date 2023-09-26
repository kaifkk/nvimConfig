return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		-- "jayp0521/mason-null-ls.nvim",
		-- "jose-elias-alvarez/null-ls.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"emmet_ls",
				"tsserver",
				"html",
				"cssls",
				"lua_ls",
				"clangd",
			},
			automatic_installation = true,
		})
	end,
}
