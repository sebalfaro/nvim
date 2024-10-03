return {
  "stevearc/conform.nvim",
  optional = false,
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      javascriptreact = { "prettier" },
      typescript = { "prettier" },
      typescriptreact = { "prettier" },
      vue = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      html = { "prettier" },
      less = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      graphql = { "prettier" },
      handlebars = { "prettier" },
      json = { "fixjson", "prettier" },
      xml = { "xmlformatter" },
    },
    formatters = {
      prettier = {},
    },
    notify_on_error = true,
  },
  -- Passing tabSize 2 for lps fomatters who allow it
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({
          timeout_ms = 3000,
          lsp_fallback = true,
          formatting_options = { tabSize = 2 },
        })
      end,
      mode = { "n", "v" },
      desc = "Format",
    },
    -- Format Selection
    {
      "<leader>ch",
      function()
        local vstart = vim.fn.getpos("'<")
        local vend = vim.fn.getpos("'>")
        local line_start = vstart[2]
        local line_end = vend[2]
        local lines = vim.fn.getline(line_start, line_end)
        local range = {
          start = line_start,
          ["end"] = line_end,
        }
        require("conform").format({
          timeout_ms = 3000,
          lsp_fallback = true,
          formatting_options = { tabSize = 2 },
          range = range,
        })
      end,
      mode = { "v" },
      desc = "Format Selection",
    },
  },
}
