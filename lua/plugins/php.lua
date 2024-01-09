return {
  {
    "mfussenegger/nvim-lint",
    linters_by_ft = {
      php = { "phpcs", "php" },
      -- Use the "*" filetype to run linters on all filetypes.
      -- ['*'] = { 'global linter' },
      -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
      -- ['_'] = { 'fallback linter' },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      -- LazyVim will use these options when formatting with the conform.nvim formatter
      formatters_by_ft = {
        php = { "php_cs_fixer" },
      },
    },
    -- opts = function()
    --   local opts = {
    --     formatters_by_ft {
    --       php = { "php_cs_fixer" }
    --     }
    --   }
    --   require("conform").setup(opts)
    -- end,
    -- config = function(_, opts)
    --   opts.formatters = opts.formatters or {}
    --   for name, formatter in pairs(opts.formatters) do
    --     if type(formatter) == "table" then
    --       local ok, defaults = pcall(require, "conform.formatters." .. name)
    --       if ok and type(defaults) == "table" then
    --         opts.formatters[name] = vim.tbl_deep_extend("force", {}, defaults, formatter)
    --       end
    --     end
    --   end
    --   for _, key in ipairs({ "format_on_save", "format_after_save" }) do
    --     if opts[key] then
    --       L.warn(
    --         ("Don't set `opts.%s` for `conform.nvim`.\n**LazyVim** will use the conform formatter automatically"):format(
    --           key
    --         )
    --       )
    --       opts[key] = nil
    --     end
    --   end
    --   format_opts = opts.format
    --   require("conform").setup(opts)
    -- end,
  },
}
