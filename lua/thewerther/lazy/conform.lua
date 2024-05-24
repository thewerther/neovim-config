return {
	{ -- Autoformat
		"stevearc/conform.nvim",
    lazy = false,
		keys = {
			{
				"<leader>ft",
				function()
					require("conform").format({
            async = true,
            lsp_fallback = true,
            timeout_ms = 500,
          })
				end,
				mode = { "n", "v" },
				desc = "[F]orma[t] buffer",
			},
		},
		opts = {
			notify_on_error = false,
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				--
				-- You can use a sub-list to tell conform to run *until* a formatter
				-- is found.
				-- javascript = { { "prettierd", "prettier" } },
				python = { "black" },
				["*"] = { "trim_whitespace" },
			},
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
