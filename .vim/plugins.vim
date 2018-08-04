" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'tpope/vim-vinegar'
"Navegación directorio
Plug 'scrooloose/nerdtree'
"Navegación Directorio, ctags y MRU
Plug 'ctrlpvim/ctrlp.vim'
"Permite Pantalla Completa
Plug 'junegunn/goyo.vim'
"Permite reemplazo
Plug 'tpope/vim-surround'
"Para Markdown
Plug 'plasticboy/vim-markdown'
"Para Wrap
Plug 'reedes/vim-pencil'

" Initialize plugin system
call plug#end()
