return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
        hide_dotfiles = false,
        hide_gitignored = true,
      },
    },
    window = {
      position = "left",
      width = 27,
      mappins = {
        ["c"] = {
          "copy",
          config = {
            show_path = "relative", -- "none", "relative", "absolute"
          },
        },
      },
    },
  },
}
