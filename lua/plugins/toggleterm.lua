return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				direction = "vertical",
				size = 60,
				open_mapping = [[<c-t>]],
                close_on_exit = true,
			})
		end,
	},
}
