-- Moving lines and blocks up and down
return {
  "booperlv/nvim-gomove",
  config = function()
    require("gomove").setup({
      map_defaults = false,
    })
    local map = vim.api.nvim_set_keymap

    -- map( "n", "<S-j>", "<Plug>GoNSMDown", {} )
    -- map( "n", "<S-k>", "<Plug>GoNSMUp", {} )
    -- map( "n", "<S-l>", "<Plug>GoNSMRight", {} )
    --
    -- map( "x", "<S-h>", "<Plug>GoVSMLeft", {} )
    -- map( "x", "<S-j>", "<Plug>GoVSMDown", {} )
    -- map( "x", "<S-k>", "<Plug>GoVSMUp", {} )
    -- map( "x", "<S-l>", "<Plug>GoVSMRight", {} )
    --
    -- map( "n", "<C-h>", "<Plug>GoNSDLeft", {} )
    -- map( "n", "<C-j>", "<Plug>GoNSDDown", {} )
    -- map( "n", "<C-k>", "<Plug>GoNSDUp", {} )
    -- map( "n", "<C-l>", "<Plug>GoNSDRight", {} )

    map("x", "<C-h>", "<Plug>GoVSDLeft", {})
    map("x", "<C-j>", "<Plug>GoVSDDown", {})
    map("x", "<C-k>", "<Plug>GoVSDUp", {})
    map("x", "<C-l>", "<Plug>GoVSDRight", {})
  end,
  opts = function()
    local map = vim.api.nvim_set_keymap

    -- map( "n", "<S-j>", "<Plug>GoNSMDown", {} )
    -- map( "n", "<S-k>", "<Plug>GoNSMUp", {} )
    -- map( "n", "<S-l>", "<Plug>GoNSMRight", {} )
    --
    -- map( "x", "<S-h>", "<Plug>GoVSMLeft", {} )
    -- map( "x", "<S-j>", "<Plug>GoVSMDown", {} )
    -- map( "x", "<S-k>", "<Plug>GoVSMUp", {} )
    -- map( "x", "<S-l>", "<Plug>GoVSMRight", {} )
    --
    -- map( "n", "<C-h>", "<Plug>GoNSDLeft", {} )
    -- map( "n", "<C-j>", "<Plug>GoNSDDown", {} )
    -- map( "n", "<C-k>", "<Plug>GoNSDUp", {} )
    -- map( "n", "<C-l>", "<Plug>GoNSDRight", {} )

    map("x", "<C-h>", "<Plug>GoVSDLeft", {})
    map("x", "<C-j>", "<Plug>GoVSDDown", {})
    map("x", "<C-k>", "<Plug>GoVSDUp", {})
    map("x", "<C-l>", "<Plug>GoVSDRight", {})
  end,
}
