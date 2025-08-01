return {
	"echasnovski/mini.nvim",
	version = false,
	init = function()
		require("mini.ai").setup()
		require("mini.bracketed").setup()
		-- require("mini.notify").setup()
		require("mini.pairs").setup()
		require("mini.operators").setup()
		require("mini.surround").setup()
		require("mini.files").setup()
		require("mini.icons").setup()
		require("mini.align").setup()
		--Mini Keymaps
		local wk = require("which-key")
		wk.add({
			{ "<leader>F", "<cmd>lua MiniFiles.open()<cr>", mode = "n", desc = "[F]ile Explorer" },
		})
	end,
}
