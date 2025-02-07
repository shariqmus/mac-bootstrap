-- lua/keymaps.lua

local keymap = vim.keymap

-- Set leader key to space
vim.g.mapleader = " "

-- Normal mode keymaps
keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open file explorer
keymap.set("n", "<leader>w", ":w<CR>")    -- Save file
keymap.set("n", "<leader>q", ":q<CR>")    -- Quit Neovim

-- Telescope keymaps (if installed)
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- Find files
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")  -- Live grep
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")    -- List buffers

-- Buffer navigation
keymap.set("n", "<leader>bn", ":bnext<CR>") -- Next buffer
keymap.set("n", "<leader>bp", ":bprev<CR>") -- Previous buffer

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")