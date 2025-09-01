return {
  -- Override LazyVim default colorscheme
  {
    "github/copilot.vim",
    event = "BufEnter",
    config = function()
      -- Enable Copilot by default
      vim.g.copilot_enabled = true

      -- Set up keybindings for Copilot
      vim.keymap.set("i", "<C-g>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
      vim.keymap.set("i", "<C-j>", 'copilot#Next()', { expr = true, silent = true })
      vim.keymap.set("i", "<C-k>", 'copilot#Previous()', { expr = true, silent = true })
      vim.keymap.set("i", "<C-x>", 'copilot#Dismiss()', { expr = true, silent = true })

      -- Manual trigger for completion
      vim.keymap.set("i", "<C-Space>", 'copilot#Suggest()', { expr = true, silent = true })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      {"github/copilot.vim"},
      {"nvim-lua/plenary.nvim"},
    },
    build = "make tiktoken",
  },
}
