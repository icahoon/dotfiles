set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/crtlp.vim'
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
set backspace=indent,eol,start
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
set mouse="a"
set hlsearch

set nobackup
set noswapfile

syntax on
colorscheme icahoon

autocmd FileType make setlocal noexpandtab
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd Filetype python setlocal ts=4 sts=4 sw=4

" Remap esc
inoremap \\ <ESC>

" Enter
" Clear highlighting by hitting return in normal mode
nnoremap <CR> :noh<CR><CR>

" Ctrl-Up
" ^[[A on Mac - iTerm2
nnoremap <Esc>[A (
inoremap <Esc>[A <C-o>(
" ^[[1;5A on Linux - Terminator
nnoremap <Esc>[1;5A (
inoremap <Esc>[1;5A <C-o>(

" Ctrl-Down
" ^[[B on Mac - iTerm2
nnoremap <Esc>[B )
inoremap <Esc>[B <C-o>)
" ^[[1;5B on Linux - Terminator
nnoremap <Esc>[1;5B )
inoremap <Esc>[1;5B <C-o>)

" Ctrl-Right
" ^[[C on Mac - iTerm2
nnoremap <Esc>[C w
inoremap <Esc>[C <C-o>w
" ^[[1;5C on Linux - Terminator
nnoremap <Esc>[1;5C w
inoremap <Esc>[1;5C <C-o>w

" Ctrl-Left
" ^[[D on Mac - iTerm2
nnoremap <Esc>[D b
inoremap <Esc>[D <C-o>b
" ^[[1;5D on Linux - Terminator
nnoremap <Esc>[1;5D b
inoremap <Esc>[1;5D <C-o>b

" Del
" Delete in normal and insert mode
nnoremap <Esc>[3~ x
inoremap <Esc>[3~ <C-o>x

" Ctrl-Z
" Undo in insert mode
inoremap <C-z> <C-o>u

" Folding
"
" za/zA - toggle fold, one level/all levels
" zc/zC - close fold
" zo/zO - open fold
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
highlight CursorLine cterm=None ctermbg=None

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight CursorLine cterm=underline ctermbg=DarkGray ctermfg=None
"autocmd InsertEnter * highlight CursorLine cterm=None ctermbg=DarkBlue ctermfg=White

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight CursorLine cterm=None ctermbg=None ctermfg=None


" Leader commands
"-----------------------------------------------
let mapleader = ","
" Quit - ,q
noremap <leader>q :q<CR>
" Save - ,w
noremap <leader>w :w<CR>
" Next file - ,n
noremap <leader>n :bn<CR>
" Previous file - ,p
noremap <leader>p :bp<CR>
" Swap files - ,,
noremap <leader><leader> :b#<CR>

" Force quit - ,Q
noremap <leader>Q :q!<CR>
" Save and quit - ,W
noremap <leader>W :wq<CR>
" Save and next file - ,N
noremap <leader>N :w<CR>:bn<CR>
" Save and previous file - ,P
noremap <leader>P :w<CR>:bp<CR>
" Remove file from buffer - ,x
noremap <leader>x :bd<CR>

noremap <leader>j :set paste<CR>
noremap <leader>J :set nopaste<CR>

" Highlight word under cursor - ,h
noremap <leader>h *

" Goto previous error - ]p
noremap ]p :cprev<CR>
" Goto next error - ]n
noremap ]n :cnext<CR>
" Goto first error - ]P
noremap ]P :cfirst<CR>
" Goto last errir - ]N
noremap ]N :clast<CR>

" Run GoBuild - ,b or ,B
noremap <leader>b :w<CR>:GoImports<CR>:GoBuild<CR>
noremap <leader>B :w<CR>:GoImports<CR>:GoBuild<CR>

" Run GoTest - ,t or ,T
noremap <leader>t :w<CR>:GoImports<CR>:GoTest<CR>
noremap <leader>T :w<CR>:GoImports<CR>:GoTest<CR>

" Run GoVet - ,v or ,V  
" GoVet is problematic. This only works well if your current directory is the same as the files being vetted.
noremap <leader>v :w<CR>:GoVet<CR>
noremap <leader>V :w<CR>:GoVet<CR>

" Run GoImports - ,i or ,I
noremap <leader>i :w<CR>:GoImports<CR>
noremap <leader>I :w<CR>:GoImports<CR>

noremap <leader>a :GoAlternate<CR>

" Run GoLint - ,L
noremap <leader>L :w<CR>:GoLint<CR>

" Run git status in new window
noremap <leader>s :!git status<CR>
" Run git diff in new window
noremap <leader>d :!git diff %<CR>

" List all buffers - ,l
noremap <leader>l :ls<CR>:buffer<Space>
" Nth buffer - ,#  i.e. ,1 ,2 ,3 etc
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

noremap <leader>m :set nonumber<CR>
noremap <leader>M :set number<CR>

" Reload vimrc - ,r
noremap <leader>r :so $MYVIMRC<CR>

" Ctrl - /
" Be able to insert comment at the beginning of a line.
noremap <C-_> I// <Esc>hhj

" Ctrl-J
" go boilerplate
noremap <C-J> oif err != nil {<CR>return err<CR>}<CR><Esc>
inoremap <C-J> if err != nil {<CR>return err<CR>}<CR>
