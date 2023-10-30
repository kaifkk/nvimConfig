return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"html",
				"css",
				"javascript",
				"cpp",
				"python",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)
			auto_install = true, -- Automatically install missing parsers when entering buffer
			ignore_install = {}, -- List of parsers to ignore installing
			highlight = { enable = true },
			indent = { enable = true },
			autotag = {
				enable = true,
			},
		})
	end,
}
