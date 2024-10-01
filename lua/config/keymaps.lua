vim.g.mapleader = ' ' -- set leader to space
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>y", "\"+y") -- copy to system clipboard (normal mode)
vim.keymap.set("v", "<leader>y", "\"+y") -- copy to system clipboard (visual mode)
vim.keymap.set("n", "<leader>d", "m`yyp``j") -- duplicate line but leave cursor on same column
vim.keymap.set("n", "<leader>D", "m`yyP``k") -- duplicate line but leave cursor on same column
