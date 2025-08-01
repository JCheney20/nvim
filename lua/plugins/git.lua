return {
	{ "tpope/vim-fugitive" },
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"echasnovski/mini.pick",
		},
		config = true,
		init = function()
			local wk = require("which-key")
			wk.add({
				{
					"<leader>G",
					"<cmd>Neogit<CR>",
					mode = "n",
					desc = "Neo[G]it",
				},
			})
		end,
	},
}
