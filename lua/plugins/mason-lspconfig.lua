local opts = {
        ensure_installed = {
                "ruff",
                "helm_ls",
                "yamlls",
        },
        automatic_installation = false,
        automatic_enable = false, -- Do NOT enable LSP servers installed by Mason. We configure them ourselves with nvim-lspconfig. Yes this is confusing because fuck you
}

return {
    "williamboman/mason-lspconfig.nvim",
    opts = opts,
    lazy = false,
    dependencies = "williamboman/mason.nvim",
}
