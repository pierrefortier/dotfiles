-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
 }
 use {'rose-pine/neovim', as = 'rose-pine' }
 use { "catppuccin/nvim", as = "catppuccin" }
 use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 use('mbbill/undotree')
 use('tpope/vim-fugitive')
 use('tpope/vim-surround')
 use('christoomey/vim-tmux-navigator', {lazy = 'false'})

 use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

use('nvim-lua/plenary.nvim')
use('ThePrimeagen/harpoon')

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use('prettier/vim-prettier')

-- use('tpope/vim-vinegar')
use('folke/zen-mode.nvim')

use {
    'stevearc/oil.nvim',
    config = function() require('oil').setup() end
}

use('f-person/git-blame.nvim')

use('nvim-tree/nvim-web-devicons')

use{
    'davidmh/mdx.nvim',
    config='true',
    dependencies = {"nvim-treesitter/nvim-treesitter"}
}

use 'm4xshen/autoclose.nvim'

end)
