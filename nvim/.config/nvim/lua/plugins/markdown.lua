return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@diagnostic disable-next-line: undefined-doc-name
		---@type render.md.UserConfig
		opts = {},

		config = function()
			require("render-markdown").setup({
				completions = { lsp = { enabled = true } },
			})
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			local g = vim.g

			vim.cmd([[
        function OpenMarkdownPreview (url)
          execute "silent !firefox --new-window " . a:url
        endfunction
      ]])

			g.mkdp_browserfunc = "OpenMarkdownPreview"
			g.mkdp_auto_close = 0
			g.mkdp_theme = "dark"
		end,
		ft = { "markdown" },
	},
}
