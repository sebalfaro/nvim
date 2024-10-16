return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      -- set an empty statusline till lualine loads
      vim.o.statusline = " "
    else
      -- hide the statusline on the starter page
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local icons = LazyVim.config.icons

    vim.o.laststatus = vim.g.lualine_laststatus

    local opts = {
      options = {
        theme = "auto",
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
      },

      sections = {

        -- A, B, C
        lualine_a = { "mode" },
        lualine_b = { "branch" },

        lualine_c = {
          LazyVim.lualine.root_dir(),
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filename" },
        },

        -- X, Y, Z
        lualine_x = {
          -- stylua: ignore
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
            color = function() return LazyVim.ui.fg("Statement") end,
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
            color = function() return LazyVim.ui.fg("Constant") end,
          },
          -- stylua: ignore
          {
            function() return "  " .. require("dap").status() end,
            cond = function() return package.loaded["dap"] and require("dap").status() ~= "" end,
            color = function() return LazyVim.ui.fg("Debug") end,
          },
          -- stylua: ignore
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = function() return LazyVim.ui.fg("Special") end,
          },
          {
            "diff",
            symbols = {
              added = icons.git.added,
              modified = icons.git.modified,
              removed = icons.git.removed,
            },
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed,
                }
              end
            end,
          },
        },
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 1 } },
        },
        lualine_z = {
          -- {
          --   "filetype",
          --   icons_enabled = false,
          --   colored = false, -- Displays filetype icon in color if set to true
          --   icon_only = false, -- Display only an icon for filetype
          --   separator = "|",
          --   padding = { left = 1, right = 1 },
          -- },
          {
            -- Tresitter
            function()
              local buf = vim.api.nvim_get_current_buf()
              local parser = vim.treesitter.get_parser(buf)
              local language = parser:lang()

              if string.len(language) == 0 then
                return "treesitter: N/A"
              else
                return language
              end
            end,
          },
          -- LSP Clints
          {
            function()
              local active_clients = vim.lsp.get_clients()
              local client_names = {}
              for _, client in pairs(active_clients or {}) do
                local buf = vim.api.nvim_get_current_buf()
                -- only return attached buffers
                if vim.lsp.buf_is_attached(buf, client.id) then
                  table.insert(client_names, client.name)
                end
              end

              if not vim.tbl_isempty(client_names) then
                table.sort(client_names)
              end
              local clients = string.len(table.concat(client_names, ", ")) == 0 and "⌨ N/A"
                or table.concat(client_names, ", ")
              return "⌨ " .. clients
            end,
          },
          -- Formatters
          {
            function()
              local buf = vim.api.nvim_get_current_buf()
              local conform = require("conform")

              -- Listar formatters disponibles y chequear si el LSP también es un formatter
              local formatters = conform.list_formatters(buf)
              local lsp_formatter = conform.list_formatters_to_run(buf)
              local available_formatters = {}

              -- Filtrar los formatters disponibles
              for _, formatter in ipairs(formatters) do
                if formatter.available then
                  table.insert(available_formatters, formatter.name)
                end
              end

              -- Determinar el estado del formatter a mostrar
              if #available_formatters == 0 then
                return lsp_formatter and "  lsp" or "  N/A"
              else
                return "  " .. table.concat(available_formatters, ", ")
              end
            end,
          },
          -- Linters
          {
            function()
              local linters = require("lint").get_running()
              if #linters == 0 then
                -- return "󰦕"
                return "󱉶  N/A"
              end
              return "󱉶 " .. table.concat(linters, ", ")
            end,
          },
        },
      },
      extensions = { "neo-tree", "lazy" },
    }

    -- do not add trouble symbols if aerial is enabled
    if vim.g.trouble_lualine then
      local trouble = require("trouble")
      local symbols = trouble.statusline
        and trouble.statusline({
          mode = "symbols",
          groups = {},
          title = false,
          filter = { range = true },
          format = "{kind_icon}{symbol.name:Normal}",
          hl_group = "lualine_c_normal",
        })
      table.insert(opts.sections.lualine_c, {
        symbols and symbols.get,
        cond = symbols and symbols.has,
      })
    end

    return opts
  end,
}
