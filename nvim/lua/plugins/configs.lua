return {
  -- Override LazyVim default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_high_contrast",
    },
  },
  {
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
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
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "zacanger/angr.vim",
  },
  {
    "scottmckendry/cyberdream.nvim",
  },
  -- Explicitly disable tokyonight
  { "folke/tokyonight.nvim", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      indent = {
        enabled = false,
      },
    },
  },
  {
    "dhananjaylatkar/cscope_maps.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" }, -- optional, for nice picker UI
    config = function()
      require("cscope_maps").setup({
          cscope = {
            exec = "cscope",        -- "cscope" or "gtags-cscope"
            db_file = "cscope.out",
            picker = "telescope",   -- "quickfix", "telescope", "fzf-lua"
            skip_picker_for_single_result = true,
            -- project_root = vim.fn.getcwd(), -- defaults to current dir
          },
        })
    end,
  },
   {
     "folke/trouble.nvim",
     opts = { use_diagnostic_signs = true },
     keys = {
       -- disable conflicting <leader>c* keys
       { "<leader>cs", false },
       { "<leader>cS", false },  -- THIS is the one you still see
       { "<leader>cl", false },
       { "<leader>cL", false },
       { "<leader>cd", false },
       { "<leader>cD", false },

       -- (optional) put Trouble on <leader>t* instead
       { "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
       { "<leader>tt", "<cmd>Trouble toggle<cr>", desc = "Trouble: toggle" },
       { "<leader>td", "<cmd>Trouble diagnostics toggle<cr>", desc = "Trouble: diagnostics" },
       { "<leader>tq", "<cmd>Trouble qflist toggle<cr>", desc = "Trouble: quickfix" },
     },
   },
   {
     "akinsho/bufferline.nvim",
     opts = {
       options = {
         numbers = "ordinal", -- Shows buffer numbers (1, 2, 3, etc.)
         show_buffer_icons = true,
         show_buffer_close_icons = false,
         show_close_icon = false,
         show_tab_indicators = true,
         separator_style = "slant",
       },
      },
  },
  -- GitHub Copilot AI Code Completion
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
}
