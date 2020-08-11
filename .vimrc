set nocompatible

filetype off

syntax on 
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

"vim-hindent
let g:hindent_on_save = 1
let g:hindent_indent_size = 2

" Rainbow
let g:rainbow_active = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=${SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

" Haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

set visualbell
