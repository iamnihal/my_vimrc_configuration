set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

" -------------------Vundle begins------------------------

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'jiangmiao/auto-pairs'
"Lightweight statusline plugin
Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" ------------------Vundle ends------------------------------

filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
 
" ---------Statusline Plugin-------

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" --------------End----------------

" --------------Mapping/Setting begins----------------

let g:vcm_s_tab_behaviour = 1 
vnoremap <C-c> "*y
noremap <C-p> "*p
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

set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set splitbelow
set splitright

"split navigations
"move to the split below
nnoremap <C-J> <C-W><C-J>  
"move to the split above
nnoremap <C-K> <C-W><C-K>   
"move to the split right
nnoremap <C-L> <C-W><C-L>   
"move to the split left
nnoremap <C-H> <C-W><C-H>   


" --------------Mapping/Setting Ends-----------------


" --------------Search Setting--------------------
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases.
" What I have notcied is that, when searching with
" only lowercase, the upper case words are also shown.
" But if you search with uppercase, only uppercase is shown
set smartcase

" show search matches as you type
set incsearch

" Highlight matching search patterns
set hlsearch

" Make double <Esc> clear search highlights
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>

" ----------------Search Setting Ends-------------------

" ------------------Tab Setting-------------------------
" Use spaces when using "<" and ">" to tab
set expandtab

" Use 4 spaces to represent tab
set tabstop=4

set softtabstop=4

" Copy indent from last line when starting new lineiletype indent on
set autoindent

" Number of spaces to use for auto indent
set shiftwidth=4

filetype indent on
set smartindent
" }}}
" -----------------Tab setting ends--------------------------
