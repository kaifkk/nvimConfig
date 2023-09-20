return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- If you want insert `(` after select function or method item
		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		require("nvim-autopairs").setup({
			enable_check_bracket_line = true,
				cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done()),
		})
		require("nvim-ts-autotag").setup()
	end,
}
