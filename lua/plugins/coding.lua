return {
  -- Incremental rename
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },
  -- Snippets
  -- {
  --   "L3MON4D3/LuaSnip",
  --   dependencies = {
  --     "rafamadriz/friendly-snippets",
  --     config = function()
  --     require("luasnip.loaders.from_vscode").lazy_load({
  --       paths = {
  --         "./snippets/typescript",
  --         "./snippets/php",
  --       },
  --     })
  --     end,
  --   },
  --   -- config = function()
  --   --   require("luasnip.loaders.from_vscode").lazy_load({
  --   --     paths = {
  --   --       "./snippets/typescript",
  --   --       "./snippets/php",
  --   --     },
  --   --   })
  --   -- end,
  -- },
}
