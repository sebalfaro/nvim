return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      terminal_colors = false,
      style = "night",
      priority = 1000,
      transparent = true,
      styles = {
        -- floats = "transparent",
        -- floats = "#8be8a2",
        -- sidebars = "#1a1b26",
        -- floats = "#1a1b26",
        -- comments = { italic = true },
      },
    },
  },
  -- {
  --   -- DEFAULT
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  --     light_style = "day", -- The theme is used when the background is set to light
  --     transparent = true, -- Enable this to disable setting the background color
  --     terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
  --     styles = {
  --       -- Style to be applied to different syntax groups
  --       -- Value is any valid attr-list value for `:help nvim_set_hl`
  --       comments = { italic = true },
  --       keywords = { italic = true },
  --       functions = {},
  --       variables = {},
  --       -- Background styles. Can be "dark", "transparent" or "normal"
  --       sidebars = "transparent", -- style for sidebars, see below
  --       floats = "transparent", -- style for floating windows
  --     },
  --     sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  --     day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  --     hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  --     dim_inactive = false, -- dims inactive windows
  --     lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  --
  --     --- You can override specific color groups to use other groups or a hex color
  --     --- function will be called with a ColorScheme table
  --     ---@param colors ColorScheme
  --     on_colors = function(colors)
  --       colors.green = "#76cc8c"
  --       -- colors.green = "#8be8a2"
  --       -- colors.green1 = "#1cc9a7"
  --       -- colors.green1 = "#04b592"
  --       colors.green1 = "#02c9a2"
  --     end,
  --
  --     --- You can override specific highlights to use other groups or a hex color
  --     --- function will be called with a Highlights and ColorScheme table
  --     ---@param highlights Highlights
  --     ---@param colors ColorScheme
  --     on_highlights = function(highlights, colors)
  --       -- highLights.highlight_tab = { fg = colors.green }
  --     end,
  --   },
  -- },
  {
    -- Gruvbox
    "sebalfaro/gruvbox-baby-nvim",
    lazy = true,
    priority = 1000,
  },
  {
    -- Craftdog
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      }
    end,
    overrides = function(colors)
      local theme = colors.theme
      return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },

        -- Save an hlgroup with dark background and dimmed foreground
        -- so that you can use it where your still want darker windows.
        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

        -- Popular plugins that open floats will link to NormalFloat by default;
        -- set their background accordingly if you wish to keep them dark and borderless
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        TelescopeTitle = { fg = theme.ui.special, bold = true },
        TelescopePromptNormal = { bg = theme.ui.bg_p1 },
        TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
        TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
        TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
        TelescopePreviewNormal = { bg = theme.ui.bg_dim },
        TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
        Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1, blend = vim.o.pumblend }, -- add `blend = vim.o.pumblend` to enable transparency
        PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
        PmenuSbar = { bg = theme.ui.bg_m1 },
        PmenuThumb = { bg = theme.ui.bg_p2 },
      }
    end,
  },
  {
    -- Sainhe
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    lazy = false,
    priority = 1000,
    opts = function()
      vim.g.gruvbox_material_better_performance = 1
      -- Fonts
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_enable_italic = 0
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_transparent_background = 1
      -- Themes
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows

      -- vim.cmd.colorscheme("gruvbox-material") -- For highlights customizations go to lua/core/highlights
    end,
  },
  {
    -- Gruvbox
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    lazy = true,
    priority = 1000,
    opts = function()
      vim.g.gruvbox_material_better_performance = 1
      -- Fonts
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_enable_italic = 0
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_transparent_background = 1
      -- Themes
      vim.g.gruvbox_material_foreground = "mix"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_ui_contrast = "high" -- The contrast of line numbers, indent lines, etc.
      vim.g.gruvbox_material_float_style = "dim" -- Background of floating windows

      -- vim.cmd.colorscheme("gruvbox-material") -- For highlights customizations go to lua/core/highlights
    end,
  },
  {
    "diegoulloao/neofusion.nvim",
    priority = 1000,
    lazy = true,
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = true,
    },
  },

  {
    "maxmx03/fluoromachine.nvim",
    lazy = true,
    config = function()
      local fm = require("fluoromachine")
      fm.setup({
        glow = false,
        theme = "delta",
        transparent = "full",
      })
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    lazy = true,
    opts = {
      transparent_background = true, -- set background to transparent
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      -- vim.cmd([[colorscheme tokyodark]])
    end,
  },
  {
    "Tsuzat/NeoSolarized.nvim",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- vim.cmd [[ colorscheme NeoSolarized ]]
    end,
  },

  -- Draculareturn
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    config = function(_, opts)
      local dracula = require("dracula")
      dracula.setup({
        transparent_bg = true,
        overrides = {},
      })
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    lazy = true,
    priority = 1000, -- Ensure it loads first
    config = function(_, opts)
      require("onedarkpro").setup({
        options = {
          transparency = true,
        },
      })
    end,
  },
  { "projekt0n/github-nvim-theme" },
  {
    "Everblush/nvim",
    lazy = false,
    name = "everblush",
    opts = function()
      require("everblush").setup({

        -- Default options
        override = {},
        transparent_background = true,
        nvim_tree = {
          contrast = false,
        },
      })
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = function()
      -- Lua
      require("onedark").setup({
        -- Main options --
        style = "warmer", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = true, -- Show/hide background
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

        -- toggle theme style ---
        toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
        toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
        code_style = {
          comments = "italic",
          keywords = "none",
          functions = "none",
          strings = "none",
          variables = "none",
        },

        -- Lualine options --
        lualine = {
          transparent = true, -- lualine center bar transparency
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
          darker = true, -- darker colors for diagnostic
          undercurl = true, -- use undercurl instead of underline for diagnostics
          background = true, -- use background color for virtual text
        },
      })
    end,
  },
  {
    url = "https://codeberg.org/jthvai/lavender.nvim",
    branch = "stable", -- versioned tags + docs updates from main
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.lavender = {
        transparent = {
          background = true,
          float = true,
          popup = true,
          sidebar = true,
        },
        signs = true,

        override = {
          theme = {},
          colors = {
            hex = {
              -- custom_red = "#ff3300", -- add a new colour; this can now be used in any highlight group
            },
            cterm = {
              -- custom_blue = 33,
            },
          },
        },
      }
      -- vim.cmd("colorscheme lavender")
    end,
  },
  -- {
  --   "akinsho/horizon.nvim",
  --   opts = {
  --     overrides = {
  --       colors = {
  --         Normal = { bg = "None" },
  --         ColorColumn = { bg = "None" },
  --         SignColumn = { bg = "None" },
  --         Folded = { bg = "None" },
  --         FoldColumn = { bg = "None" },
  --         CursorLine = { bg = "black" },
  --         CursorColumn = { bg = "None" },
  --         WhichKeyFloat = { bg = "None" },
  --         VertSplit = { bg = "None" },
  --         LineNrAbove = { fg = "#FFFFFF", bold = true },
  --         LineNr = { fg = "#fcba03", bold = true },
  --         LineNrBelow = { fg = "#FFFFFF", bold = true },
  --       },
  --     },
  --   },
  -- },
  -- {
  --   "akinsho/horizon.nvim",
  --   -- dependencies = {
  --   --   "xiyaowong/transparent.nvim",
  --   --   lazy = false,
  --   -- },
  --   transparent = true,
  --   lazy = false,
  --   name = "horizon",
  --   opts = {
  --     plugins = {
  --       cmp = true,
  --       indent_blankline = true,
  --       nvim_tree = true,
  --       telescope = true,
  --       which_key = true,
  --       barbar = true,
  --       notify = true,
  --       symbols_outline = true,
  --       neo_tree = true,
  --       gitsigns = true,
  --       crates = true,
  --       hop = true,
  --       navic = true,
  --       quickscope = false,
  --     },
  --     overrides = {
  --       colors = {
  --
  --         Normal = { bg = "None" },
  --         ColorColumn = { bg = "None" },
  --         SignColumn = { bg = "None" },
  --         Folded = { bg = "None" },
  --         FoldColumn = { bg = "None" },
  --         CursorLine = { bg = "black" },
  --         CursorColumn = { bg = "None" },
  --         WhichKeyFloat = { bg = "None" },
  --         VertSplit = { bg = "None" },
  --         LineNrAbove = { fg = "#FFFFFF", bold = true },
  --         LineNr = { fg = "#fcba03", bold = true },
  --         LineNrBelow = { fg = "#FFFFFF", bold = true },
  --       },
  --     },
  --   },
  -- },
  {
    -- "LunarVim/horizon.nvim",
    -- opts = {
    --   colors = {
    --     bg = "#2841a6",
    --   },
    -- },
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    opts = function()
      require("nightfox").setup({
        options = {
          transparent = true,
        },
      })
    end,
  },
  -- {
  --   "koalhack/koalight.nvim",
  --   lazy = false,
  --   dependencies = {
  --     "xiyaowong/transparent.nvim",
  --     lazy = false,
  --   },
  -- },
  {
    "oxfist/night-owl.nvim",
    lazy = true,
    opts = {
      transparent_background = true,
    },
  },
  {
    "xero/evangelion.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --   vim.cmd("colorscheme evangelion")
    -- end,
  },
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = { transparent = false, terminal_colors = false },
  },
  -- Setting Default
  {
    "LazyVim/LazyVim",
    import = "lazyvim.plugins",
    opts = {
      -- colorscheme = "dracula",
      -- colorscheme = "neofusion",
      -- colorscheme = "gruvbox-baby",
      colorscheme = "tokyonight",
      -- colorscheme = "eldritch",
      -- colorscheme = "koalight",
      -- colorscheme = "kanagawa-dragon",
      -- colorscheme = "fluoromachine",
    },
  },
}
