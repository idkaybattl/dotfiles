-- removes the tildes
vim.opt.fillchars = { eob = " " }

-- line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- allows ; to be used for command instead of just :
vim.keymap.set("n", ";", ":", { noremap = true })
-- mapping window movement to Ctrl+{h,j,k,l}
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<Cmd>wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<Cmd>wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<Cmd>wincmd l<CR>', { noremap = true, silent = true })

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = true,
})

-- colorscheme
vim.cmd.colorscheme("rose-pine")
