-- removes the tildes
vim.opt.fillchars = { eob = " " }

-- line numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- allows ; to be used for command instead of just :
vim.keymap.set("n", ";", ":", { noremap = true })

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
