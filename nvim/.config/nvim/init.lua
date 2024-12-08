-- Load lazy.nvim
require("config.lazy")

-- Make catppuccin default colorscheme
vim.cmd.colorscheme("catppuccin-mocha")
vim.opt.termguicolors = true

-- Map <leader> to space
vim.g.mapleader = " "

-- Set tabwidth to 2
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4
