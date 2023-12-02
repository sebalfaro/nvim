-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- TODO: see this!
-- Turn off paste made when leaving insert
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   pattern = "*",
--   command = "set nopaste"
-- })

-- Fix canceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"json", "jsonc"},
  callback = function ()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end
})
