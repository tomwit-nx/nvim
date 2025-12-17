return {
  "nvim-telescope/telescope.nvim",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function()
    local actions = require("telescope.actions")

    return {
      defaults = {
        mappings = {
          i = {
            ["<C-x>"] = actions.select_vertical,
          },
          n = {
            ["<C-x>"] = actions.select_vertical,
          },
        },
      },
    }
  end,
}

