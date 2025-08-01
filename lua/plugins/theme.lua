return {
	{
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			opts = {
				transparent = true,
				terminal_colors = true,
			},
			init = function()
				vim.cmd("colorscheme tokyonight-night")
			end,
		},
		{
			"nvim-lualine/lualine.nvim",
			dependencies = {
				"nvim-tree/nvim-web-devicons",
				"RRethy/base16-nvim",
			},
			opts = {
				theme = base16,
			},
		},
	},
}
