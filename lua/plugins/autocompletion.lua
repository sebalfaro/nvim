return {
  {
    "saghen/blink.cmp",
    dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
    opts = {
      keymap = {
        preset = "enter",
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "select_next", "fallback" },
      },
      snippets = { preset = "luasnip" },
      -- ensure you have the `snippets` source (enabled by default)
      sources = {
        default = { "snippets", "lsp", "path", "buffer" },
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    opts = function(plugin, opts)
      -- friendly-snippets - enable standardized comments snippets
      -- require("luasnip.loaders.from_vscode").lazy_load({
      --   include = {
      --     "javascript",
      --     "javascriptreact",
      --     "typescriptreact",
      --     "typescript",
      --     "typescript.tsx",
      --     "javascript.jsx",
      --   },
      -- })
      require("luasnip").filetype_extend("typescript", { "tsdoc", "typescriptreact" })
      require("luasnip").filetype_extend("javascript", { "jsdoc", "javascriptreact", "html" })
      require("luasnip").filetype_extend("javascript", { "html" })
      require("luasnip").filetype_extend("lua", { "luadoc" })
      require("luasnip").filetype_extend("python", { "pydoc" })
      require("luasnip").filetype_extend("rust", { "rustdoc" })
      require("luasnip").filetype_extend("cs", { "csharpdoc" })
      require("luasnip").filetype_extend("java", { "javadoc" })
      require("luasnip").filetype_extend("c", { "cdoc" })
      require("luasnip").filetype_extend("cpp", { "cppdoc" })
      require("luasnip").filetype_extend("php", { "phpdoc" })
      require("luasnip").filetype_extend("kotlin", { "kdoc" })
      require("luasnip").filetype_extend("ruby", { "rdoc" })
      require("luasnip").filetype_extend("sh", { "shelldoc" })
      require("luasnip").filetype_extend("go", { "godoc" })
    end,
  },
  -- {
  --   "L3MON4D3/LuaSnip",
  --   version = nil,
  --   branch = "master",
  --   dependencies = {
  --     "rafamadriz/friendly-snippets",
  --     "Zeioth/NormalSnippets",
  --     "benfowler/telescope-luasnip.nvim",
  --     "saadparwaiz1/cmp_luasnip",
  --     -- {
  --     --   "mlaursen/vim-react-snippets",
  --     --   dependencies = "L3MON4D3/LuaSnip",
  --     --   ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  --     -- },
  --   },
  --   opts = function(plugin, opts)
  --     -- friendly-snippets - enable standardized comments snippets
  --     -- require("luasnip.loaders.from_vscode").lazy_load({
  --     --   include = {
  --     --     "javascript",
  --     --     "javascriptreact",
  --     --     "typescriptreact",
  --     --     "typescript",
  --     --     "typescript.tsx",
  --     --     "javascript.jsx",
  --     --   },
  --     -- })
  --     -- require("luasnip").filetype_extend("typescript", { "tsdoc" })
  --     -- require("luasnip").filetype_extend("javascript", { "jsdoc" })
  --     require("luasnip").filetype_extend("lua", { "luadoc" })
  --     require("luasnip").filetype_extend("python", { "pydoc" })
  --     require("luasnip").filetype_extend("rust", { "rustdoc" })
  --     require("luasnip").filetype_extend("cs", { "csharpdoc" })
  --     require("luasnip").filetype_extend("java", { "javadoc" })
  --     require("luasnip").filetype_extend("c", { "cdoc" })
  --     require("luasnip").filetype_extend("cpp", { "cppdoc" })
  --     require("luasnip").filetype_extend("php", { "phpdoc" })
  --     require("luasnip").filetype_extend("kotlin", { "kdoc" })
  --     require("luasnip").filetype_extend("ruby", { "rdoc" })
  --     require("luasnip").filetype_extend("sh", { "shelldoc" })
  --     require("luasnip").filetype_extend("go", { "godoc" })
  --   end,
  -- },
  {
    -- "VonHeikemen/lsp-zero.nvim",
    -- branch = "v3.x",
    -- dependencies = {
      -- -- LSP Support
      -- { "neovim/nvim-lspconfig" }, -- Required
      -- { "williamboman/mason.nvim" }, -- Optional
      -- { "williamboman/mason-lspconfig.nvim" }, -- Optional

      -- Autocompletion
      -- { "hrsh7th/nvim-cmp" }, -- Required
      -- { "hrsh7th/cmp-nvim-lsp" }, -- Required
      -- { "hrsh7th/cmp-buffer" }, -- Optional
      -- { "hrsh7th/cmp-path" }, -- Optional
      -- { "saadparwaiz1/cmp_luasnip" }, -- Optional
      -- { "hrsh7th/cmp-nvim-lua" }, -- Optional

      -- Snippets
      -- { "L3MON4D3/LuaSnip" }, -- Required
      -- { "rafamadriz/friendly-snippets" }, -- Optional
    -- },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   -- TODO:
  --   -- opts =
  --   -- Removing TAB behaviors it's making conflicts when tab an empty space on yml files
  --   keys = {
  --     {
  --       "<C-Space>",
  --       function()
  --         return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next"
  --       end,
  --       expr = true,
  --       silent = true,
  --       mode = "i",
  --     },
  --     -- {
  --     --   "<C-k>",
  --     --   function()
  --     --     require("luasnip").jump(1)
  --     --   end,
  --     --   mode = "s",
  --     -- },
  --     -- {
  --     --   "<C-j>",
  --     --   function()
  --     --     require("luasnip").select_next_item(select_opts)
  --     --   end,
  --     --   mode = { "i", "s" },
  --     -- },
  --     --   {
  --     --     "<C-o>",
  --     --     function()
  --     --       require("cmp").mapping.abort()
  --     --     end,
  --     --     mode = { "i", "s" },
  --     --   },
  --     -- },
  --
  --     -- {
  --     --   "<C-k>",
  --     --   function()
  --     --     require("luasnip").jump(1)
  --     --   end,
  --     --   mode = "s",
  --     -- },
  --     -- {
  --     --   "<s-j>",
  --     --   function()
  --     --     require("luasnip").jump(-1)
  --     --   end,
  --     --   mode = { "i", "s" },
  --     -- },
  --     {
  --       "<CR>",
  --       function()
  --         require("luasnip").mapping.confirm({ select = true })
  --       end,
  --       mode = { "i", "s" },
  --     },
  --     -- {
  --     --   "<C-o>",
  --     --   function()
  --     --     require("luasnip").mapping.confirm({ select = true })
  --     --   end,
  --     --   mode = { "i", "s" },
  --     -- },
  --   },
  -- },
}
