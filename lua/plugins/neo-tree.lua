return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
        hide_dotfiles = true,
        hide_gitignored = true,
        -- bind_to_cwd = false,
        never_show = {},
      },
    },
    window = {
      -- auto_expand_width = true,
      width = "20%",
      position = "right",
    },
    source_selector = {
      winbar = true, -- toggle to show selector on winbar
      content_layout = "center",
      tabs_layout = "equal",
      show_separator_on_edge = true,
      sources = {
        { source = "filesystem", display_name = "󰉓 FS" },
        { source = "buffers", display_name = "󰈙 BF" },
        { source = "git_status", display_name = " GIT" },
        -- { source = "document_symbols", display_name = "o" },
        { source = "diagnostics", display_name = "󰒡" },
      },
      highlight_tab = "NeoTreeFileNameOpened",
      -- highlight_tab = { nil, nil, "777777" },
      highlight_tab_active = "NeoTreeTabActive",
      highlight_background = "NeoTreeTabActive",
      highlight_separator = "NeoTreeTabActive",
      highlight_separator_active = "NeoTreeTabActive",
    },
  },
  event_handlers = {
    {
      event = "file_opened",
      handler = function(file_path)
        -- auto close
        -- vimc.cmd("Neotree close")
        -- OR
        require("neo-tree.command").execute({ action = "close" })
      end,
    },
  },
}
