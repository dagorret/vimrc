set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-vinegar'

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

syntax enable


set backspace=indent,eol,start        
let mapleader = ','                  
set number                          


"-----------Visuals----------"
colorscheme atom-dark-256
set t_CO=256
set guifont=Fira\ Code\ 15
set linespace=15
"set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=l  "remove left-hand scroll baroptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"-----------Searching----------"
set hlsearch
set incsearch

"-----------Split Management----------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>



"-----------Mappings----------"

"Acceso fácil para editar vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Remover el resaltado de búsqueda
nmap <Leader><space> :nohlsearch<cr>



"-----------Auto-Commands----------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
