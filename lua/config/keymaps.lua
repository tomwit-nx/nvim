vim.g.mapleader = ' ' -- set leader to space
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>g", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>s", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>q", ":Telescope current_buffer_fuzzy_find<CR>")
vim.keymap.set("n", "<leader>y", "\"+y") -- copy to system clipboard (normal mode)
vim.keymap.set("v", "<leader>y", "\"+y") -- copy to system clipboard (visual mode)
vim.keymap.set("v", "p", '"_dP', {noremap = true, silent = true}) -- paste text without yanking it
vim.keymap.set("n", "`", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
vim.keymap.set("n", "<leader>d", ":Oil ", { desc = "Open directory" })
vim.keymap.set("n", "<S-Up>", "5k")
vim.keymap.set("n", "<S-Down>", "5j")
vim.keymap.set("n", "<leader>p", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
end, { desc = "Copy file path to clipboard" })
