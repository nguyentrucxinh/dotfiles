call plug#begin('~/.local/share/nvim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'severin-lemaignan/vim-minimap'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'icymind/NeoSolarized'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'

call plug#end()

let mapleader = ','
set number
set ignorecase                              " Case-insensitive searching.
set smartcase                               " But case-sensitive if expression contains a capital letter.
set autoread
syntax enable

set background=dark
colorscheme palenight
"colorscheme NeoSolarized

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

"let g:lightline.colorscheme = 'palenight'

" Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>

" Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

" Automatically source the Vimrc on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.config/nvim/init.vim source %
augroup END

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
