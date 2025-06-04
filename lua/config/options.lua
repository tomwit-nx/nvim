vim.opt.relativenumber = true -- relative line numbers
vim.opt.shiftwidth = 4 -- set shiftwidth
vim.opt.expandtab = true -- use spaces instead of tab sa
vim.opt.tabstop = 4 -- set number of spaces per tab
vim.opt.showmatch = true -- show matching parentheses
vim.opt.incsearch = true -- display search result as you type
vim.opt.hlsearch = true -- highlight search results
vim.opt.ruler = true -- display line and column nuemr in the status line
vim.opt.showcmd = false -- disable showcmd because it slows down input
vim.opt.scrolloff = 5 -- scroll past last line
vim.opt.wrap = true -- enable line wrapping
vim.diagnostic.config({virtual_text = true, signs = false}) -- enable LSP text, disable LSP signs
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "helm" },
	callback = function()
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.expandtab = true
	end
})
