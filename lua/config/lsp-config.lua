require("lazy").setup({
  { "folke/tokyonight.nvim" },
  { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
      -- config = function()
      -- require("luasnip.loaders.from_vscode").lazy_load({
      --   paths = {
      --     "./snippets/typescript",
      --     "./snippets/php",
      --   },
      -- })
      -- end,
    },
    -- config = function()
    --   require("luasnip.loaders.from_vscode").lazy_load({
    --     paths = {
    --       "./snippets/typescript",
    --       "./snippets/php",
    --     },
    --   })
    -- end,
    config = function()
      local luasnip = require("luasnip")
      luasnip.config.set_config({
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = true,
      })
      -- add vscode exported completions
      require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./vs-snippets" } })
      local r = require("utils.remaps")

      r.map({ "i", "s" }, "<c-n>", function()
        if luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        end
      end, "Expand current snippet or jump to next", { silent = true })

      r.map({ "i", "s" }, "<c-p>", function()
        if luasnip.jumpable(-1) then
          luasnip.jump(-1)
        end
      end, "Go to previous snippet", { silent = true })

      r.map("i", "<c-l>", function()
        if luasnip.choice_active() then
          luasnip.change_choice(1)
        end
      end, "Show list of options")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
      },
    },
  },
})
