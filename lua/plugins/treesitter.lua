return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    -- Rainbow
    -- TODO: Check JSX
    "HiPhish/nvim-ts-rainbow2",
    -- HTML autotag
    "windwp/nvim-ts-autotag",
  },
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
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
    })
    require("nvim-treesitter.configs").setup({
      autotag = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      rainbow = {
        enable = true,
        -- list of languages you want to disable the plugin for
        disable = { "jsx", "cpp" },
        -- Which query to use for finding delimiters
        query = "rainbow-parens",
        -- Highlight the entire buffer all at once
        strategy = require("ts-rainbow").strategy.global,
      },
    })
  end,
}
