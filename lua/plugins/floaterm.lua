return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				direction = "float",            -- Utilise le mode flottant
				size = 15,                      -- Hauteur souhaitée pour le terminal
				open_mapping = [[<c-t>]],       -- Raccourci pour ouvrir et fermer le terminal
				float_opts = {
					border = "curved",         -- Style de bordure (ex: "curved", "single")
					width = math.floor(vim.o.columns * 0.2),   -- Largeur à 40% de l'écran
					height = 15,               -- Hauteur du terminal flottant
					row = vim.o.lines - 20,    -- Position verticale (proche du bas)
					col = 0,                   -- Position à gauche
				},
			})
		end,
	},
}
