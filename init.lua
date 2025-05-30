require("config.options") -- Load general options
require("config.keymaps") -- Load general keymaps
require("config.lazy") -- Load lazy package manager has to be loaded after keymaps are set (leader)

-- load colorscheme
vim.cmd.colorscheme("github_dark_default")

-- LSP config
local lspconfig = require('lspconfig')

-- pyright - install with snap and not Mason since it doesn't work
lspconfig.pyright.setup({
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
})

-- ruff
lspconfig.ruff.setup {
  trace = 'messages',
  init_options = {
    settings = {
      logLevel = 'info',
    }
  }
}

-- YAML specific settings
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { "*" },
--   callback = function(args) 
--     local ft = vim.bo[args.buf].filetype
--     if ft == "yaml" then
--         vim.api.nvim_command("colorscheme retrobox")
--     else
--         vim.api.nvim_command("colorscheme gruber-darker")
--     end
--  end
-- })

-- YAML language server
require('lspconfig').yamlls.setup({
  settings = {
    yaml = {
      schemas = {
        kubernetes = "*.yml", -- catch-all if no specific file pattern
      },
      validate = true,
      completion = true,
      hover = true,
    },
  },
})

