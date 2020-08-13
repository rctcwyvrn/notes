set nocompatible

filetype off

" syntax on 
filetype plugin indent on

set modelines=0

set wrap

nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

map <F7> :NERDTree<CR>

set backspace=indent,eol,start

set scrolloff=5

set laststatus=2
set noshowmode

set showcmd

set matchpairs+=<:>

set number

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

" Rainbow
let g:rainbow_active = 1

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

set rtp+=~/notes/current-course

set visualbell
