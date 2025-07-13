vim.g.mapleader = ' ' -- set leader to space
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>s", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>q", ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("n", "<leader>y", "\"+y") -- copy to system clipboard (normal mode)
vim.keymap.set("v", "<leader>y", "\"+y") -- copy to system clipboard (visual mode)
vim.keymap.set("n", "<leader>d", "m`yyp``j") -- duplicate line but leave cursor on same column
vim.keymap.set("n", "<leader>D", "m`yyP``k") -- duplicate line but leave cursor on same column
vim.keymap.set("v", "p", '"_dP', {noremap = true, silent = true}) -- paste text without yanking it
vim.keymap.set("n", "`", "<CMD>DiredGoBack<CR>", { desc = "Open parent directory" })
vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true

