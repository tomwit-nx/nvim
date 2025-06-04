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

-- setup helm-ls
lspconfig.helm_ls.setup {
  settings = {
    ['helm-ls'] = {
      logLevel = "info",
      valuesFiles = {
        mainValuesFile = "values.yaml",
        lintOverlayValuesFile = "values.lint.yaml",
        additionalValuesFilesGlobPattern = "values*.yaml"
      },
      yamlls = {
        enabled = true,
        enabledForFilesGlob = "*.{yaml,yml}",
        diagnosticsLimit = 50,
        showDiagnosticsDirectly = false,
        path = "yaml-language-server",
        initTimeoutSeconds = 3,
        config = {
          schemas = {
            kubernetes = "templates/**",
            ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
            ["https://json.schemastore.org/github-action.json"] = "/.github/actions/*",
            ["https://json.schemastore.org/chart.json"] = "Chart.yaml",
            ["https://json.schemastore.org/kustomization.json"] = "kustomization.yaml",
          },
          completion = true,
          hover = true,
        }
      }
    }
  }
}

-- bashls
vim.lsp.enable 'bashls'
