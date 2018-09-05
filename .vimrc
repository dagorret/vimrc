	syntax enable

	so ~/.vim/plugins.vim

	set backspace=indent,eol,start        "Hacer backspace un comportamiento igual que otros editores
	let mapleader = ','                   "Default leader is \, pero se cambia a ,
	set nonumber                            "Activa los números de línea
	set linespace=8                       "Gvim => espaciado entre líneas


	"-------Visuals---------"
	colorscheme atom-dark-256
	set t_CO=256
	set linespace=12
	set guioptions-=e   "Remover gui tabs
	set guifont=Fira\ Code\ 15 
	:set guioptions-=m  "remove menu bar
	:set guioptions-=T  "remove toolbar
	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R
	hi LineNr guibg=bg
	hi LineNr ctermbg=bg

	"Setting left
	set foldcolumn=2
	hi foldcolumn guibg=bg
	hi foldcolumn ctermbg=bg

"settin vps
hi vertsplit guifg=bg guibg=bg
hi vertsplit ctermfg=bg ctermbg=bg


"-------Searching---------"
set hlsearch
set incsearch


"-------Split Management------"
set splitbelow
set splitright

nnoremap <C-W>M <C-W>\|<C-W>_
nnoremap <C-W>m <C-W>=

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-------Plugins---------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\|git|'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ NERDTreew
"/

let NERDTreeHijakNewtr = 0

"/ 
"/ Pencil 
"/
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,md call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END


"/-------Mappings---------"

"Facilitar la edición del .vimrc
nmap <Leader>ev :tabedit $MYVIMRC<cr>
"Remover simplemente el resaltado de la búsqueda
nmap <Leader><space> :nohlsearch<cr>
"Set menu bar
nmap <Leader>om :set guioptions-=m<cr>  
nmap <Leader>oM :set guioptions+=m<cr>  

"Mapping NERDTree
nmap <Leader>t1 :NERDTreeToggle<cr>

"CtrlP
nmap <c-R> :CtrlPBufTag<cr>
nmap <Leader>tr :CtrlPMRUFiles<cr>

"Ctags
nmap <Leader>f :tag<space>



"-------Auto-Commands-----"

"Automáticamente carga el .vimrc después de guardarlos
augroup autosourcing
	autocmd!
	autocmd BufwritePost .vimrc source %
augroup END


"-------Tab-Setting-----"
set expandtab
set shiftwidth=2
set softtabstop=2
filetype plugin indent on


"-------Help-----------"
"     "+y – copy the entire buffer into + (normal mode)
"    "*dd – cut the current line into * (normal mode)
"    "+gp – paste from + after the cursor (works in both normal and visual modes)
"    :%y * – copy the entire buffer into * (this one is an ex command) 

    "*dd – cut the current line into * (normal mode)
    "+p – paste from + after the cursor (works in both normal and visual modes)
