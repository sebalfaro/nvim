return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("refactoring").setup()
  end,
  keys = {
    {
      "<space>r?",
      mode = { "n", "x" },
      function()
        require("telescope").extensions.refactoring.refactors()
      end,
      desc = "Refactor This",
    },
    {
      "<leader>re",
      mode = "x",
      function()
        require("refactoring").refactor("Extract Function")
      end,
      desc = "Extract Function",
    },
    {
      "<leader>rf",
      mode = "x",
      function()
        require("refactoring").refactor("Extract Function To File")
      end,
      desc = "Extract Function To File",
    },
    {
      "<leader>rv",
      mode = "x",
      function()
        require("refactoring").refactor("Extract Variable")
      end,
      desc = "Extract Variable",
    },
    {
      "<leader>rI",
      mode = "n",
      function()
        require("refactoring").refactor("Inline Function")
      end,
      desc = "Inline Function",
    },
    {
      "<leader>ri",
      mode = { "n", "x" },
      function()
        require("refactoring").refactor("Inline Variable")
      end,
      desc = "Inline Variable",
    },
    {
      "<leader>rb",
      mode = "n",
      function()
        require("refactoring").refactor("Extract Block")
      end,
      desc = "Extract Block",
    },
    {
      "<leader>rbf",
      mode = "n",
      function()
        require("refactoring").refactor("Extract Block To File")
      end,
      desc = "Extract Block To File",
    },
    -- {
    --   "<space>rp",
    --   mode = "n",
    --   function()
    --     require("refactoring").debug.printf()
    --   end,
    --   desc = "insert debug statement",
    -- },
    -- {
    --   "<space>rs",
    --   mode = { "x", "n" },
    --   function()
    --     require("refactoring").debug.print_var()
    --   end,
    --   desc = "show variables",
    -- },
    -- {
    --   "<space>rc",
    --   mode = "n",
    --   function()
    --     require("refactoring").debug.cleanup({})
    --   end,
    -- },
  },
}
