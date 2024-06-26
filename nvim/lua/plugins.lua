-- If lazy.nvim is not present, install it
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.runtimepath:prepend(lazypath)

-- Plugins spec
local plugins_table = {
  {'dhananjaylatkar/cscope_maps.nvim'},
  {'tpope/vim-vinegar'},
  {'adelarsq/vim-matchit'},
  {'troydm/zoomwintab.vim'},
  {'jiangmiao/auto-pairs'},
  {'jremmen/vim-ripgrep'},
  {'farmergreg/vim-lastplace'},
  {'timakro/vim-searchant'},
  {'junegunn/fzf.vim'},
  {'vim-airline/vim-airline'},
  {'vim-airline/vim-airline'},
  {'Asheq/close-buffers.vim'},
  {'schickling/vim-bufonly'},
  {'Townk/vim-autoclose'},
  {'nathanalderson/yang.vim'},
  {'scrooloose/syntastic'},
  {'jistr/vim-nerdtree-tabs'},
  {'easymotion/vim-easymotion'},
  {'tpope/vim-fugitive'},
  {'tpope/vim-rhubarb'},
  {'bogado/file-line'},
  {'jpalardy/spacehi.vim'},
  {'nvim-lualine/lualine.nvim', lazy = false},
  {'kdheepak/tabline.nvim', lazy = false},
  {'nvim-tree/nvim-web-devicons', lazy = false},
  {'dkarter/bullets.vim'},
  {'majutsushi/tagbar'},
  {'bronson/vim-trailing-whitespace'},
  {'scrooloose/nerdtree'},
  {'mhinz/vim-startify'},
  {'dracula/vim'},
  {'MattesGroeger/vim-bookmarks'},

  -- Common plugins
  {'caenrique/swap-buffers.nvim', event = "VeryLazy"},
  {'unblevable/quick-scope', keys = {'f', mode = 'n'}},
  {'yssl/QFEnter', event = "VeryLazy"},
  {'kyazdani42/nvim-tree.lua', layz = false},
  {'junegunn/vim-easy-align', event = "VeryLazy"},
  {'majutsushi/tagbar', cmd = {'TagbarToggle'}},
  {'tpope/vim-fugitive', event = "VeryLazy"},
  {'tpope/vim-surround', event = "VeryLazy"},
  {'tpope/vim-repeat', event = "VeryLazy"},
  {'wgurecky/vimSum', build = ':UpdateRemotePlugins', cmd = {'VisMath', 'VisSum', 'VisMean', 'VisMult'}},

  -- find and search
  {"junegunn/fzf", build = ":call fzf#install()", event = "VeryLazy"},
  -- 'junegunn/fzf.vim',
  -- 'mileszs/ack.vim',
  {'mhinz/vim-grepper', event = "VeryLazy"},

  -- neovim extras
  -- Run :TSUpdate to update parsers
  {'nvim-treesitter/nvim-treesitter',
    dependencies = {
    },
  },
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',

  -- dev tools
  {'tpope/vim-dispatch', ft = {'cpp', 'c', 'fortran'}, cmd = {'Make'}},
  {'lervag/vimtex', ft = {'tex'}},
  {'nvimtools/none-ls.nvim', event = "InsertEnter"},

  -- lsp diagnostic formatting
  {'folke/trouble.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
    },
  },

  -- code auto completion
  'neovim/nvim-lspconfig',
  {'hrsh7th/nvim-cmp',
    dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    'saadparwaiz1/cmp_luasnip',
    'ray-x/lsp_signature.nvim',
    },
   },
   {'L3MON4D3/LuaSnip', event = "VeryLazy"}
}
-- END plugin spec

-- Configure lazy.nvim options
local opts_table = {
  defaults = {
    lazy = true,
  },
}
-- END lazy.nvim config

-- Load lazy.nvim
require('lazy').setup(plugins_table, opts_table)
