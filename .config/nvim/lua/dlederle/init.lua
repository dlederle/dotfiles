require('dlederle.plugins')
require('dlederle.lsp')
require('dlederle.cmp')
require('dlederle.prettier')
require('dlederle.tree-sitter')

vim.g.mapleader = " "
vim.g.maplocalleader = " "
 
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.g.italic_comments = true

vim.g.mix_format_on_save = 1

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true
    }
  }
}
require('telescope').load_extension('fzf')
vim.api.nvim_set_keymap('n', '<Leader>f', ':Files<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>F', ':Files %:p:h<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>b', ':Buffers<CR>', {})

require('nvim-tree').setup()
vim.api.nvim_set_keymap('n', '<Leader>t', ':NvimTreeToggle<CR>', {})

require('elixir').setup()
vim.cmd [[
  set background=light
  colorscheme everforest
  filetype on
  syntax on
]]
