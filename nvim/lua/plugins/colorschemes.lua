return {
  -- Override LazyVim default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_high_contrast",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "hard", -- or "soft"
    },
  },
  {
    "projekt0n/github-nvim-theme",
  },
  {
    "Mofiqul/dracula.nvim",
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
    },
  },

  {
    "navarasu/onedark.nvim",
  },
  -- Explicitly disable tokyonight
  { "folke/tokyonight.nvim", enabled = false },
}
