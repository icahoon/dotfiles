set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree' 

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

fixdel
set ignorecase
set smartcase
set ruler
set number
set sidescroll=1
set bg=light
set ts=2
set shiftwidth=2
set expandtab
set wrap
"set gfn=Monaco\ 10
set formatoptions-=cro
set tags=tags;
set ai
set number

syntax on
colorscheme icahoon

autocmd FileType make setlocal noexpandtab
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd Filetype python setlocal ts=4 sts=4 sw=4

" remap esc
inoremap \\ <ESC>

" Clear highlighting by hitting return in normal mode
nnoremap <CR> :noh<CR><CR>

nnoremap <Esc>[A (
inoremap <Esc>[A <C-o>(
nnoremap <Esc>[B )
inoremap <Esc>[B <C-o>)
"nnoremap <Esc>[C <End>
nnoremap <Esc>[C w
inoremap <Esc>[C <C-o>w
"nnoremap <Esc>[D <Home>
nnoremap <Esc>[D b
inoremap <Esc>[D <C-o>b

" delete in normal and insert mode
nnoremap <Esc>[3~ x
inoremap <Esc>[3~ <C-o>x

" undo in insert mode
inoremap <C-z> <C-o>u

" Folding
"
" za/zA - toggle fold, one level/all levels
" zc/zC - close fold
" zo/Zo - open fold
" zm/zM - fold everything in buffer
" zr/zR - unfold everything in buffer
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" vim-json settings
" -----------------
let g:vim_json_syntax_conceal = 0

" NERDTree settings
"------------------
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>


" Enable CursorLine
set cursorline 

" Default Colors for CursorLine
highlight  CursorLine cterm=None ctermbg=None

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine cterm=None ctermbg=DarkGrey

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine cterm=None ctermbg=None


" Leader commands
let mapleader = ","
noremap <leader>q :q<CR>
noremap <leader>w :w<CR>
noremap <leader>n :bn<CR>
noremap <leader>p :bp<CR>
noremap <leader><leader> :b#<CR>

noremap <leader>Q :q!<CR>
noremap <leader>W :wq<CR>
noremap <leader>N :w<CR>:bn<CR>
noremap <leader>P :w<CR>:bp<CR>

noremap <leader>a :argd *<CR>:bufdo :argadd %<CR>
noremap <leader>f :vimgrep /
noremap <leader>h *

noremap ]p :cprev<CR>
noremap ]n :cnext<CR>
noremap ]P :cfirst<CR>
noremap ]N :clast<CR>

noremap <leader>b :w<CR>:GoBuild<CR>

noremap <leader>s :new \| read !git status<CR>
noremap <leader>d :new \| read !git diff<CR>

noremap <leader>l :ls<CR>:buffer<Space>
noremap <leader>1 :b1<CR>
noremap <leader>2 :b2<CR>
noremap <leader>3 :b3<CR>
noremap <leader>4 :b4<CR>
noremap <leader>5 :b5<CR>
noremap <leader>6 :b6<CR>
noremap <leader>7 :b7<CR>
noremap <leader>8 :b8<CR>
noremap <leader>9 :b9<CR>
noremap <leader>0 :b10<CR>
