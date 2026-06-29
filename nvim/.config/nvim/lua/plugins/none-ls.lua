return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,

				-- python
				null_ls.builtins.diagnostics.pylint.with({
					extra_args = { "--disable=C0114,C0115,C0116,R0903,R0904,C0103," },
				}),

				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,

				-- markdown
				null_ls.builtins.formatting.markdownlint,

				null_ls.builtins.formatting.prettier.with({
					filetypes = { "html" },
				}),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
