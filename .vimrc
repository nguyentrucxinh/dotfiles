call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'severin-lemaignan/vim-minimap'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'bagrat/vim-workspace'

" Initialize plugin system
call plug#end()

"-----------My config--------------

set nocompatible                            " be iImproved, required

syntax enable                               " Turn on syntax highlighting.
filetype plugin indent on                   " Turn on file type detection.

set showcmd                                 " Display incomplete commands.
set showmode                                " Display the mode you are in.

set backspace=indent,eol,start              " Intuitive backspacing.

set hidden                                  " Handle multiple buffers better.

set ignorecase                              " Case-insensitive searching.
set smartcase                               " But case-sensitive if expression contains a capital letter.

set number                                  " Show line numbers.
set ruler                                   " Show cursor position.

set wrap                                    " Turn on line wrapping.

set title                                   " Set the terminal's title.

set noerrorbells visualbell t_vb=           " No beeping.

set nobackup                                " Don't make a backup before overwriting a file.
set nowritebackup                           " And again.
set directory=$HOME/.vim/tmp//,.            " Keep swap files in one location.

set expandtab                               " Use spaces instead of tabs.

set laststatus=2                            " Always show the statusbar.

set autoindent
set encoding=UTF-8

set cursorline
highlight clear CursorLine
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

set showbreak=↪
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
"set nolist

set spell

set background=dark
"colorscheme gruvbox

set guifont=Fira\ Code:h14

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone

let mapleader = ','

"-----------Search--------------

set hlsearch
set incsearch

"-----------Mappings--------------

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/.vimrc<cr>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"-----------Auto-Commands--------------

" Automatically source the Vimrc on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

" Automatic fold settings for specific files
autocmd FileType css setlocal foldmethod=indent shiftwidth=2 tabstop=2

"-----------Plugins--------------

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|vendor\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

nmap <D-p> :CtrlP<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle"
nmap <leader>1 :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
