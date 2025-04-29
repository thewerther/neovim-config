return {
	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			require("gruvbox").setup({
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
			})
			vim.cmd([[colorscheme gruvbox]])
			vim.o.background = "dark" -- or "light" for light mode
		end,
	},
}
