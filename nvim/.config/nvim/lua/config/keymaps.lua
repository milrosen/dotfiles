-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jh", "<Esc>")
map('n','<leader>aD', ':lua vim.fn.system("rm -rf ~/.local/state/nvim/avante")', { noremap = true, silent = true})
map("n","<leader>k", "z=", { desc = "Spell suggestions", silent = true })
