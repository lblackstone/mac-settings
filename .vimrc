inoremap jk <ESC>
syntax on           " syntax highlighting on
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number          " show line numbers
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set iskeyword-=_

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

vnoremap . :norm.<CR>
