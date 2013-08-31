set backspace=indent,eol,start

set gfn=Monaco:h14
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set ruler
set modeline
set autoindent
set smartindent
set number

set hlsearch
set incsearch
set showmatch

:colorscheme desert
:set mouse=a
autocmd BufWritePre *.py :%s/\s\+$//e
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

