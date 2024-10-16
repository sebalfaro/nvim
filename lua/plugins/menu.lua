return {
  {
    "nvchad/menu",

    lazy = true,
    config = function()
      require("menu").open("default")
      -- require("menu").open({
      --   {
      --     name = "Format Buffer",
      --     cmd = function()
      --       local ok, conform = pcall(require, "conform")
      --
      --       if ok then
      --         conform.format({ lsp_fallback = true })
      --       else
      --         vim.lsp.buf.format()
      --       end
      --     end,
      --     rtxt = "<leader>cf",
      --   },
      -- })
    end,
  },
  vim.keymap.set("n", "<C-t>", function()
    require("menu").open("default")
  end, {}),
  vim.keymap.set("n", "<RightMouse>", function()
    vim.cmd.exec('"normal! \\<RightMouse>"')

    local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
    require("menu").open(options, { mouse = true })
  end, {}),
}
