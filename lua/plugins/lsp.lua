return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      inlay_hints = { enabled = false },
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        html = {},
        tsserver = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
          single_file_support = true,
          filetypes = {
            "typescript",
            "typescriptreact",
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript.tsx",
          },
          settings = {
            javascript = {},
            typescript = {},
          },
        },
        eslint = {
          -- settings = {},
          -- filetypes = {
          --   "typescript",
          --   "typescriptreact",
          --   "javascript",
          --   "javascriptreact",
          --   "javascript.jsx",
          --   "typescript.tsx",
          -- },
        },
        -- emmet_language_server = {
        --   filetypes = {
        --     "css",
        --     "eruby",
        --     "html",
        --     "javascript",
        --     "javascriptreact",
        --     "less",
        --     "sass",
        --     "scss",
        --     "pug",
        --     "typescriptreact",
        --     "typescript",
        --     "php",
        --     "markdown",
        --   },
        -- },
        -- emmet_ls = {
        --   filetypes = {
        --     "astro",
        --     "blade",
        --     -- "css",
        --     "eruby",
        --     "html",
        --     "htmldjango",
        --     "javascriptreact",
        --     "less",
        --     "pug",
        --     -- "sass",
        --     -- "scss",
        --     "svelte",
        --     "typescriptreact",
        --     "vue",
        --     "php",
        --   },
        -- },
        intelephense = {
          filetypes = {
            "php",
          },
        },
        yamlls = {
          filetypes = {
            "yaml",
            "yml",
          },
        },
        docker_compose_language_service = {
          filetypes = {
            "yaml",
            "yml",
          },
        },
        sqls = {},
      },
    },
  },
}
