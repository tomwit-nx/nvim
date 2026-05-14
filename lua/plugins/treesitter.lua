local M = {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

return { M }
