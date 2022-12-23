local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'nvim-lua/plenary.nvim'

  use 'sainnhe/everforest'

  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  -- use 'L3MON4D3/LuaSnip'

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use 'editorconfig/editorconfig-vim'

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts = require('nvim-treesitter.install')
		  ts.compilers = { "gcc-12" }
		  ts.update({ with_sync = true })
	  end,
  }

	use { 'sainnhe/sonokai', config = "require('dlederle.theme').setup()" }
  use { "ellisonleao/gruvbox.nvim" }


  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

   use {
     'kyazdani42/nvim-tree.lua',
       requires = {
         'kyazdani42/nvim-web-devicons', -- optional, for file icons
       }
   }

   -- use {
   --   '/usr/local/opt/fzf',
   --   rtp = '/usr/local/opt/fzf'     -- Use brew-installed fzf
   -- }
   -- use 'junegunn/fzf.vim'
   use 'nvim-telescope/telescope.nvim'
   use 'nvim-telescope/telescope-file-browser.nvim'
   use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }


   -- -- Language specific
   -- use {
   --   'evanleck/vim-svelte',
   --     requires = {
   --       'pangloss/vim-javascript',
   --       'othree/html5.vim'
   --     }
   -- }

  -- use 'JuliaEditorSupport/julia-vim'

  use({ "mhanberg/elixir.nvim", requires = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim" }})
  use "mhinz/vim-mix-format"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
