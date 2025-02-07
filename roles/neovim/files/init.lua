-- init.lua

-- Set up Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Use the stable branch
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("plugins")

-- Load keymaps
require("keymaps")

-- Basic Neovim settings
vim.opt.number = true          -- Enable line numbers
vim.opt.relativenumber = true  -- Enable relative line numbers
vim.opt.tabstop = 2            -- Set tab width to 2 spaces
vim.opt.shiftwidth = 2         -- Set indent width to 2 spaces
vim.opt.expandtab = true       -- Use spaces instead of tabs
vim.opt.termguicolors = true   -- Enable true color support