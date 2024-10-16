return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "TextChanged", "InsertLeave", "BufLeave", "FocusLost" },
  opts = {
    condition = function(buf)
      return require("auto-save.utils.data").not_in(vim.fn.getbufvar(buf, "&filetype"), { "harpoon" })
    end,
  },
}
