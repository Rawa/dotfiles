local use = require('packer').use

local packer = require('packer')

return packer.startup(function()
  -- PackerSync after save
  vim.cmd([[
    augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]])

  use 'wbthomason/packer.nvim' -- Packer Manager

  use {
    'tpope/vim-surround',
  }

  -- nvim-cmp autocompletion
  use {
    'hrsh7th/nvim-cmp',
    config = require("config.cmp").setup(),
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'octaltree/cmp-look',
    'hrsh7th/cmp-nvim-lua',
  }

  use {
    'morhetz/gruvbox',
    config = function()
      vim.cmd('colorscheme gruvbox')
    end
  }
end)
--  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
