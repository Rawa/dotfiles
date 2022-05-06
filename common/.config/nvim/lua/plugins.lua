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

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

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
    'L3MON4D3/LuaSnip'
  }

  use {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'octaltree/cmp-look',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp'
  }

  use {
    'saadparwaiz1/cmp_luasnip'
  }

    -- telescope
  use {
    {
      'nvim-telescope/telescope.nvim',
      requires = {
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


  -- lsp
  use {
    'neovim/nvim-lspconfig',
    config = [[require("config.lsp").setup()]],
    require = {
      'nvim-lua/plenary.nvim',
      'kevinhwang91/nvim-bqf', -- better quickfix
      'ray-x/lsp_signature.nvim',
    }
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
