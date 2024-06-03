return {
  "ThePrimeagen/harpoon",
  -- config = function()
  --   local mark = require("harpoon.mark")
  --   local ui = require("harpoon.ui")
  --   vim.keymap.set("n", ",ha", mark.add_file)
  --   vim.keymap.set("n", ",hn", ui.nav_next)
  --   vim.keymap.set("n", ",hp", ui.nav_prev)
  --   vim.keymap.set("n", ",hh", ui.toggle_quick_menu)
  --   require("telescope").load_extension("harpoon")
  -- end,
  -- opts = {
  --   menu = {
  --     width = vim.api.nvim_win_get_width(0) - 4,
  --   },
  --   settings = {
  --     save_on_toggle = true,
  --   },
  -- },
  opts = function()
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    })
  end,
  keys = function()
    local keys = {
      {
        "<leader>h",
        desc = "Harpoon",
      },
      {
        "<leader>hH",
        function()
          local mark = require("harpoon.mark")
          mark.add_file()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>hh",
        function()
          local ui = require("harpoon.ui")
          ui:toggle_quick_menu()
        end,
        desc = "Harpoon Quick Menu",
      },
      {
        "<leader>hr",
        function()
          local mark = require("harpoon.mark")
          mark.clear_all()
        end,
        desc = "Remove All Marks",
      },
    }
    -- for i = 1, 5 do
    --   table.insert(keys, {
    --     "<leader>" .. i,
    --     function()
    --       require("harpoon"):list():select(i)
    --     end,
    --     desc = "Harpoon to File " .. i,
    --   })
    -- end
    return keys
  end,
}
