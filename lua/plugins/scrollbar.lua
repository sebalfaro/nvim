return {
  "petertriho/nvim-scrollbar",
  config = function()
    require("scrollbar").setup({
      show = true,
      show_in_active_only = false,
      set_highlights = true,
      handlers = {
        cursor = true,
      },
    })
  end,
}
