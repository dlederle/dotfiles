"Not compatible with vi
set nocompatible

" Filetype Stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'vim-airline/vim-airline'

Plugin 'leafgarland/typescript-vim'

Plugin 'Quramy/vim-js-pretty-template'

Plugin 'marijnh/tern_for_vim'

Plugin 'othree/jspc.vim'

Plugin 'w0rp/ale'

Plugin 'mattn/emmet-vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'sbdchd/neoformat'

Plugin 'chemzqm/vim-jsx-improve'
Plugin 'pangloss/vim-javascript'

" for editing prose
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-lexical'
Plugin 'reedes/vim-litecorrect'


call vundle#end()
filetype plugin indent on

"Turn on syntax highlighting
syntax on

"set hidden
set hidden

"Don't update display when executing macros
set lazyredraw

"Let yourself know what mode your'e in
set showmode

"set search scan to wrap around file
set wrapscan

"make command line two lines high
set ch=2

"keep stuff in history
set history=100

"set tabs to only be 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red


map <C-n> <ESC>:tabnew<RETURN>
map <C-h> <ESC>:tabp<CR>
map <C-l> <ESC>:tabn<CR>
set guioptions-=T
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:tern_show_argument_hints='on_hold'
let g:tern_map_keys=1

let g:user_emmet_leader_key='<C-Z>'

" Format on save with Prettier and Neoformat
let g:neoformat_enabled_javascript = ['prettier']
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END


set backspace=indent,eol,start

" Split navigation with (ctrl-<dir>)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Default split bottom right
set splitbelow
set splitright

au BufNewFile,BufRead *.ejs set filetype=html

augroup writing
  autocmd!
  set laststatus=0
  autocmd FileType markdown,mkd call pencil#init({'wrap': 'soft', 'autoformat': 0})
                            \ | call litecorrect#init()
                            \ | call lexical#init({'spell': 1 })
  autocmd FileType text         call pencil#init({'wrap': 'soft', 'autoformat': 0})
                            \ | call lexical#init({ 'spell': 1 })
augroup END
let g:pencil#conceallevel = 3
let g:pencil#concealcursor = 'c'

let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_lint_on_text_changed = 'never'

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

set laststatus=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript set formatprg=prettier\ --stdin
autocmd Filetype c setlocal ts=8 sts=8 sw=8
autocmd Filetype cpp setlocal ts=8 sts=8 sw=8

autocmd Filetype typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces


"autocmd BufWritePre *.js :normal gggqG
