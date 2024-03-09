function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
    vim.o.background = "dark" -- or "light" for light mode
end

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
            ColorMyPencils("gruvbox")
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
            })
        end
    },
}
