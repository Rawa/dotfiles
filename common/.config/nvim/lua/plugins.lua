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

  use 'tpope/vim-surround'

  use 'scrooloose/nerdcommenter'

  use {
    'scrooloose/nerdtree',
    config = [[require("config.nerdtree").setup()]],
  }

  -- nvim-cmp autocompletion
  use {
    'hrsh7th/nvim-cmp',
    config = [[require("config.cmp").setup()]],
  }
  use {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'octaltree/cmp-look',
    'hrsh7th/cmp-nvim-lua',
  }

    -- telescope
  use {
    {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
        'vim-telescope/telescope-frecency.nvim',
        'nvim-telescope/telescope-fzf-native.nvim'
      },
      config = [[require("config.telescope").setup()]],
    },
    {
      'nvim-telescope/telescope-frecency.nvim',
      requires = 'tami5/sqlite.lua',
    },
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'make',
    },
    'crispgm/telescope-heading.nvim',
  }

  use 'easymotion/vim-easymotion'

  use 'bronson/vim-trailing-whitespace'

  use {
    'xfyuan/vim-mac-dictionary',
    requires = {{ 'skywind3000/vim-quickui' }},
    config = function()
      vim.cmd('nnoremap <silent><leader>ww :MacDictPopup<CR>')
    end
  }

  use {
    'windwp/nvim-autopairs',
    config = [[require('nvim-autopairs').setup({})]]
  }

  -- Theme
  use {
    'morhetz/gruvbox',
    config = function()
      vim.cmd('colorscheme gruvbox')
    end
  }
end)
--  use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client


--" Git Flog
--Plug 'tpope/vim-fugitive'
--Plug 'rbong/vim-flog'
--nnoremap <silent> <leader>gl :Flog<CR>

--Plug 'godlygeek/tabular'

--" LANG
--" MD
--Plug 'plasticboy/vim-markdown'
--let g:vim_markdown_folding_level = 3
--let g:vim_markdown_folding_disabled = 1
