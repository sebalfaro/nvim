return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
        "tailwindcss-language-server",
        "typescript-language-server",
        "js-debug-adapter",
        "css-lsp",
        "html-lsp",
        "intelephense",
        -- "emmet-language-server",
        -- "emmet-ls",
        "prettier",
        "pretty-php",
        "phpcs",
        "eslint_d",
        "php-cs-fixer",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "yaml-language-server",
        "sql-formatter",
        "sqls",
        "markdownlint",
        "marksman",
        "markdown-toc",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "black",
          "debugpy",
          "mypy",
          "ruff",
          "pyright",
          "tailwindcss-language-server",
          "typescript-language-server",
          "js-debug-adapter",
          "css-lsp",
          "html-lsp",
          "intelephense",
          -- "emmet_language_server",
          -- "emmet_ls",
          "prettier",
          "pretty-php",
          "phpcs",
          "eslint_d",
          "php-cs-fixer",
          -- "phpactor",
          "docker-compose-language-service",
          "dockerfile-language-server",
          "yaml-language-server",
          "sql-formatter",
          "sqls",
          "markdownlint",
          "marksman",
          "markdown-toc",
        },
      })
    end,
  },
}
