set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'
call vundle#end()            " required

filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme / Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number		" show line numbers
"set relativenumber	" use relative numbers
set cul			" highlight current line
set laststatus=2	" last window always has a statusline
set nohlsearch		" don't continue to highlight searched phrases
set ruler		" always show info along bottom
set cindent
set showcmd
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting / Layout 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
filetype on
set autoindent		" auto-indent
set nowrap		" don't wrap text
set tabstop=4		"tab spacing
set softtabstop=4	"unify
set shiftwidth=4	"indent-outent by 4 columns
set splitright
set splitbelow

" SEARCH
set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

let mapleader=","

nnoremap <leader>s :mksession<CR>
" type ',s' to save the buffers etc. Reopen where you were with Vim with 'vim -S'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ON STARTUP 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let g:nerdtree_tabs_open_on_console_startup=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => REMAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
nnoremap g. g;
nnoremap g- g,
