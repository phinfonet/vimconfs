set nocompatible	" be iMproved, required

" initialize vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tomasr/molokai'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'burnettk/vim-angular'
Plug 'mattn/emmet-vim'
Plug 'slashmili/alchemist.vim'

" All Plugs must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
syntax on

set backspace=indent,eol,start

"" Visual
if $TERM_PROGRAM =~ "iTerm"
  set termguicolors
endif

set guifont=Monaco:h13
set number
set laststatus=2
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

"" Airline Tabs
let g:airline#extensions#tabline#enabled = 1

"" Indent
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent
set shiftround
set nowrap

"" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" Backups
set nobackup
set noswapfile

"" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

if has('python3')
  let g:UltiSnipsUsePythonVersion = 3
endif

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" Leader
let mapleader=','
