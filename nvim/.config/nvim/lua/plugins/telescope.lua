return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    defaults = {
      file_ignore_patterns = {},
      find_command = { "rg", "--files", "--hidden", "--glob", "!/.git/*", "--follow" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fh", builtin.oldfiles, {})
      vim.keymap.set("n", "<leader>bf", builtin.buffers, {})

      vim.keymap.set("n", "<leader>fr", function()
        require("telescope").extensions.frecency.frecency()
      end, { desc = "Telescope: Frecency" })

    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
  {
    "nvim-telescope/telescope-frecency.nvim",
    -- install the latest stable version
    version = "*",
    config = function()
      require("telescope").load_extension("frecency")
    end,
  },
}
