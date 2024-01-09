return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    -- Rainbow
    -- TODO: Check JSX
    "hiphish/rainbow-delimiters.nvim",
    -- HTML autotag
    "windwp/nvim-ts-autotag",
  },
  opts = function(_, opts)
    -- add tsx and treesitter
    -- vim.list_extend(opts.ensure_installed, {
    --   "tsx",
    --   "typescript",
    -- })
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "gitignore",
        "graphql",
        "http",
        "java",
        "astro",
        "bash",
        "css",
        "php",
      },
      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetypes = {
          "html",
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
          "svelte",
          "vue",
          "tsx",
          "jsx",
          "rescript",
          "xml",
          "php",
          "markdown",
          "astro",
          "glimmer",
          "handlebars",
          "hbs",
        },
      },
      indent = {
        enable = true,
      },
      highlight = {
        enable = true, -- false will disable the whole extension
        disable = { "" }, -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
      },
    })
  end,
}
