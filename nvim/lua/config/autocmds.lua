-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- ~/.config/nvim/init.lua (or a sourced lua file)

vim.opt.termguicolors = true

local grp = vim.api.nvim_create_augroup("C_Col81_PerLine", { clear = true })

-- Bright red bg for the single char at col 81
vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  group = grp,
  callback = function()
    vim.api.nvim_set_hl(0, "Col81Char", { bg = "#ff0000", ctermbg = 9 })
  end,
})

-- Apply only for C buffers; matches are dynamic (auto-update as you type)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  group = grp,
  callback = function()
    -- Remove any previous vertical-bar style matches if you tried them
    for _, m in ipairs(vim.fn.getmatches()) do
      if m.group == "Col81Char" then vim.fn.matchdelete(m.id) end
    end
    -- Highlight **the character at virtual column 81** (not the whole column)
    -- This only shows on lines that *have* a char at col 81.
    vim.fn.matchadd("Col81Char", "\\%81v.", 200)
  end,
})
