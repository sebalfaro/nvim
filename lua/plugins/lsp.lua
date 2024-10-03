return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      inlay_hints = { enabled = false },
      servers = {
        pyright = {},
        html = {},
        eslint = {},
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
        --     "pug,"
        --     "typescriptreact",
        --     "typescript",
        --     "php",
        --     "markdown",
        --   },
        -- },
        -- tailwindcss = {
        --   filetypes = { "templ", "astro", "javascript", "typescript", "react", "html", "heex" },
        -- },
        tailwindcss = {},
        -- sonarlint = {
        --   filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "ts", "tsx" }, -- ajusta según tus lenguajes de trabajo
        --   root_dir = require("lspconfig").util.root_pattern(".git", "sonar-project.properties"),
        --   settings = {
        --     sonarlint = {
        --       lintProject = true,
        --     },
        --   },
        -- },
      },
    },
  },
}
