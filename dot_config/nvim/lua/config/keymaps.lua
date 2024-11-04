-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<localleader>ss", "<cmd>ObsidianSearch<cr>", { desc = "Search" })
map("n", "<localleader>sa", "<cmd>ObsidianTag<cr>", { desc = "Tag" })
map("n", "<localleader>to", "<cmd>ObsidianToday<cr>", { desc = "Today" })
map("n", "<localleader>d", "<cmd>ObsidianDailies<cr>", { desc = "Dailies" })
