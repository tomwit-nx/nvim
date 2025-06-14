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

-- groovyls
lspconfig.groovyls.setup{
    cmd = { "java", "-jar", "/home/tom/.local/share/nvim/mason/packages/groovy-language-server/build/libs/groovy-language-server-all.jar" },
}

-- bashls
vim.lsp.enable 'bashls'

-- oil
require("oil").setup({
  columns = {
    "icon",
    "permissions",
    "size",
    "mtime",
  },
  keymaps = {
    ["g?"] = { "actions.show_help", mode = "n" },
    ["<CR>"] = "actions.select",
    ["<C-s>"] = { "actions.select", opts = { vertical = true } },
    ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
    ["<C-t>"] = { "actions.select", opts = { tab = true } },
    ["<C-p>"] = "actions.preview",
    ["<C-c>"] = { "actions.close", mode = "n" },
    ["<C-l>"] = "actions.refresh",
    ["`"] = { "actions.parent", mode = "n" },
    ["_"] = { "actions.open_cwd", mode = "n" },
    ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
    ["gs"] = { "actions.change_sort", mode = "n" },
    ["gx"] = "actions.open_external",
    ["g."] = { "actions.toggle_hidden", mode = "n" },
    ["g\\"] = { "actions.toggle_trash", mode = "n" },
  },
  view_options = {
    show_hidden = true,
  }
})
