-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local global = vim.g

-- Use clipboard
opt.clipboard = "unnamedplus"

-- Theme: gruvbox-baby
vim.g.gruvbox_baby_background_color = "dark"
vim.g.gruvbox_baby_transparent_mode = true

-- Word wrapping
opt.wrap = true
opt.breakindent = true
opt.linebreak = true
-- opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly

-- Autoformat
global.autoformat = false

