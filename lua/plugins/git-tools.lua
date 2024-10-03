return {
  {
    -- Git Lens
    "f-person/git-blame.nvim",
    opts = function()
      return {}
    end,
    config = function()
      --vim.g.gitblame_ignored_filetypes = { "toggleterm" }
      vim.g.gitblame_date_format = "%x %r"
      vim.g.gitblame_message_template = "<author> • <date> • <summary> • <sha>"
    end,
  },
  {
    -- Diff viewer
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewFileHistory %" },
    keys = {
      { "<Leader>gt", "<cmd>DiffviewFileHistory %<CR>", desc = "Diff Current File" },
      { "<Leader>gh", "<cmd>DiffviewFileHistory<CR>", desc = "Diff File" },
      { "<Leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Diff View" },
    },
    opts = function()
      local actions = require("diffview.actions")
      vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
        group = vim.api.nvim_create_augroup("rafi_diffview", {}),
        pattern = "diffview:///panels/*",
        callback = function()
          vim.opt_local.cursorline = true
          vim.opt_local.winhighlight = "CursorLine:WildMenu"
        end,
      })

      return {
        enhanced_diff_hl = true, -- See ':h diffview-config-enhanced_diff_hl'
        keymaps = {
          view = {
            { "n", "q", "<cmd>DiffviewClose<CR>" },
            { "n", "<Tab>", actions.select_next_entry },
            { "n", "<S-Tab>", actions.select_prev_entry },
            { "n", "<LocalLeader>a", actions.focus_files },
            { "n", "<LocalLeader>e", actions.toggle_files },
          },
          file_panel = {
            { "n", "q", "<cmd>DiffviewClose<CR>" },
            { "n", "h", actions.prev_entry },
            { "n", "o", actions.focus_entry },
            { "n", "gf", actions.goto_file },
            { "n", "sg", actions.goto_file_split },
            { "n", "st", actions.goto_file_tab },
            { "n", "<C-r>", actions.refresh_files },
            { "n", ";e", actions.toggle_files },
          },
          file_history_panel = {
            { "n", "q", "<cmd>DiffviewClose<CR>" },
            { "n", "o", actions.focus_entry },
            { "n", "O", actions.options },
          },
        },
      }
    end,
  },
  --  Conflicts
  {
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,

    opts = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "GitConflictDetected",
        callback = function()
          vim.notify("Conflict detected in " .. vim.fn.expand("<afile>"))
          vim.keymap.set("n", "cww", function()
            engage.conflict_buster()
            create_buffer_local_mappings()
          end, "Git Conflict")
        end,
      })

      require("git-conflict").setup({
        default_mappings = {
          ours = "<leader>gCo",
          theirs = "<leader>gCt",
          none = "<leader>gC0",
          both = "<leader>gCb",
          next = "<leader>gCn",
          prev = "<leader>gCp",
        },
      })
    end,
    -- keys = {
    --   { "<leader>gC", desc = "Git Conflict" },
    -- }
    -- Keybinds
    -- co — choose ours
    -- ct — choose theirs
    -- cb — choose both
    -- c0 — choose none
    -- ]x — move to previous conflict
    -- [x — move to next conflict
  },
  -- Git Graph
  -- {
  --   "SuperBo/fugit2.nvim",
  --   opts = {
  --     width = 70,
  --     libgit2_path = "/opt/homebrew/lib/libgit2.dylib",
  --   },
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-tree/nvim-web-devicons",
  --     "nvim-lua/plenary.nvim",
  --     "nvim-neorocks/rocks.nvim",
  --     {
  --       "chrisgrieser/nvim-tinygit", -- optional: for Github PR view
  --       dependencies = { "stevearc/dressing.nvim" },
  --     },
  --   },
  --   cmd = { "Fugit2", "Fugit2Diff", "Fugit2Graph" },
  --   keys = {
  --     { "<leader>gF", mode = "n", "<cmd>Fugit2<cr>", desc = "Git Graph" },
  --   },
  -- },

  -- Graph
  {
    "isakbm/gitgraph.nvim",
    dependencies = { "sindrets/diffview.nvim" },
    ---@type I.GGConfig
    opts = {
      symbols = {
        merge_commit = "M",
        commit = "*",
      },
      format = {
        timestamp = "%H:%M:%S %d-%m-%Y",
        fields = { "hash", "timestamp", "author", "branch_name", "tag" },
      },
    },
    init = function()
      vim.keymap.set("n", "<leader>go", function()
        require("gitgraph").draw({}, { all = true, max_count = 5000 })
      end, { desc = "New Git Graph" })
    end,
  },
}
