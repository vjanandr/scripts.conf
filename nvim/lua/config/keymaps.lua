-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Alternative: Use Telescope for fuzzy function finding
vim.keymap.set("n", "<leader>tf", ":Telescope treesitter<CR>", { desc = "Find functions with Telescope" })
