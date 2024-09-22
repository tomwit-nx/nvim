local opts = {
	ensure_installed = {
		"ruff",
	},
	automatic_installation = false,
}

return {
    "williamboman/mason-lspconfig.nvim",
    opts = opts,
    lazy = false,
    dependencies = "williamboman/mason.nvim",
}

