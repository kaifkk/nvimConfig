return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	--lazy = true,
	keys = {
		{ "<leader>ee", "<cmd>NvimTreeToggle<CR>" },
		{ "<leader>ef", "<cmd>NvimTreeFindFile<CR>" },
		{ "<leader>ec", "<cmd>NvimTreeCollapse<CR>" },
		{ "<leader>er", "<cmd>NvimTreeRefresh<CR>" },
	},
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	-- vim.cmd([[hi NvimTreeIndentMarker guifg=#3FC5FF]]),
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 30,
			},
			renderer = {
				icons = {
					web_devicons = {
						file = {
							enable = true,
							color = true,
						},
						folder = {
							enable = true,
							color = true,
						},
					},
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
	end,
}
