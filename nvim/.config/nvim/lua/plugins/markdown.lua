return {
	{
		"davidgranstrom/nvim-markdown-preview",
		config = function()
			vim.g.nvim_markdown_preview_theme = "github"
		end,
	},
	{
		"Thiago4532/mdmath.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			dynamic_size = 0.7,
			hide_on_insert = false,
		},

		-- The build is already done by default in lazy.nvim, so you don't need
		-- the next line, but you can use the command `:MdMath build` to rebuild
		-- if the build fails for some reason.
		-- build = ':MdMath build'
	},
}
