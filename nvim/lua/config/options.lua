-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.mouse = ""
vim.opt.background = "dark"
vim.cmd([[
  augroup BlackBackground
    autocmd!
    autocmd ColorScheme * highlight Normal guibg=#000000
    autocmd ColorScheme * highlight NonText guibg=#000000
    autocmd ColorScheme * highlight LineNr guibg=#000000
    autocmd ColorScheme * highlight Folded guibg=#000000
  augroup END
]])
