return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua.with({
					filetypes = { "lua" },
				}),
				null_ls.builtins.diagnostics.flake8.with({
					extra_args = {
						"--max-line-length",
						"120",
					},
				}),
				null_ls.builtins.diagnostics.actionlint,
				null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.gofmt.with({
					filetypes = { "go" },
				}),
				null_ls.builtins.formatting.goimports_reviser.with({
					filetypes = { "go" },
				}),
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
