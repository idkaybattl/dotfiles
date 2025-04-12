return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				section_separators = "",
				component_separators = "",
			},
			sections = {
				lualine_c = {
					function()
						local buf_name = vim.fn.expand("%:t") -- Get the current buffer name
						return buf_name == "" and "[No Name]" or buf_name
					end,
				},
			},
		})
	end,
}
