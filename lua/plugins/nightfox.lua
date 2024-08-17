return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
			},
			palettes = {
				all = {
					bg4 = "#9a949a",
				},
			},
		})

		vim.cmd("colorscheme duskfox")
	end,
}
