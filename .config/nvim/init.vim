call plug#begin('~/.local/share/nvim/plugged')

" ---On-demand loading---
" UI
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " <leader>1
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Color schemes
Plug 'icymind/NeoSolarized'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
" Utilities
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim' " <c-p> <c-t>
Plug 'mattn/emmet-vim' " <c-y>,
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

call plug#end()

" ---My config---
let mapleader = ','
set number				    " Line number
set ignorecase                              " Case-insensitive searching.
set smartcase                               " But case-sensitive if expression contains a capital letter.
set autoread				    " Auto reload file if change from disk
syntax enable				    " Highlight syntax
set background=dark			    " Background
colorscheme palenight			    " Color scheme

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif


" ---Mapping---

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Automatically source the Vimrc on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END


" ---Plugin config---

"/
""/ fzf
"/
nmap <c-p> :GFiles<cr>
nmap <c-t> :Files<cr>

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle"
nmap <leader>1 :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

"/
"/ Airline
"/
let g:airline#extensions#tabline#enabled = 1

