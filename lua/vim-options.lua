vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Mozgasd a sort feljebb normál módban
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Mozgasd a kijelölt blokkokat feljebb vagy lejjebb vizuális módban
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })


local format_sync_grp = vim.api.nvim_create_augroup("goimports", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		require("go.format").goimports()
	end,
	group = format_sync_grp,
})
