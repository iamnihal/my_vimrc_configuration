syntax enable

set nocompatible
filetype off

set encoding=utf-8
set number
set relativenumber

"mapping leader to ','
let mapleader = ","

" off highlight
nmap <Leader><space> :nohlsearch<cr>

inoremap jk <ESC>

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J> "move to the split below
nnoremap <C-K> <C-W><C-K> "move to the split above
nnoremap <C-L> <C-W><C-L> "move to the split right
nnoremap <C-H> <C-W><C-H> "move to the split left


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"auto-complete window goes away when you’re done with it
let g:ycm_autoclose_preview_window_after_completion=1

" disable that old “Press ? for help”.
let NERDTreeMinimalUI = 0
let NERDTreeDirArrows = 1

" to open and close NerdTree.
nnoremap <leader>f :NERDTreeToggle<Enter>

" automatically close NerdTree when you open a file.
let NERDTreeQuitOnOpen = 1

let g:syntastic_check_on_open = 1
let g:syntastic_auto_jump = 1

let python_highlight_all=1
syntax on
