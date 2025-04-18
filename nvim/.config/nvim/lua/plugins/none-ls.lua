return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,

				-- python
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,

        -- markdown
        null_ls.builtins.formatting.markdownlint,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
