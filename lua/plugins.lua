local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

-- UI
  use 'glepnir/dashboard-nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = require('ui.nvimtree')
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    tag = 'release', -- To use the latest release
    config = require('ui.gitsigns')
  }

-- TOOLS
  use 'nvim-lua/popup.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = require('tools.telescope')
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use {
    'nvim-telescope/telescope-project.nvim'
  }

  use {
    "nvim-telescope/telescope-frecency.nvim",
    requires = {"tami5/sqlite.lua"}
  }

  use {
    "folke/which-key.nvim"
  }

  use {
    "nathom/filetype.nvim",
    config = require('tools.filetype')
  }

--COMPLETION
  use {
    'hrsh7th/nvim-cmp'
  }

  use {
    'hrsh7th/cmp-nvim-lsp'
  }

  use {
    'L3MON4D3/LuaSnip'
  }

  use {
    'hrsh7th/cmp-nvim-lua'
  }

  use {
    'hrsh7th/cmp-path'
  }

  use {
    'hrsh7th/cmp-buffer'
  }

  use {
    'hrsh7th/cmp-cmdline'
  }

  use {
    'neovim/nvim-lspconfig',
    config = require('cmp.lspconfig')
  }

  use {
    'williamboman/nvim-lsp-installer',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
