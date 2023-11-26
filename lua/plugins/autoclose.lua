--return {
--  "windwp/nvim-autopairs",
--  event = "InsertEnter",
--  opts = {}, -- this is equalent to setup({}) function
--}

-- Best than autopairs
return {
  "altermo/ultimate-autopair.nvim",
  event = { "InsertEnter", "CmdlineEnter" },
  branch = "v0.6", --recomended as each new version will have breaking changes
  opts = {
    --Config goes here
  },
}
