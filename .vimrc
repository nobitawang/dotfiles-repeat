set background=dark
set ruler
set secure
set hls
set ignorecase
set number
set showcmd
set encoding=utf-8
set fileencodings=utf-8,default,big5
set backspace=indent,eol,start
set shiftwidth=4
set softtabstop=4
set tabstop=8
set matchpairs+=<:>
set ambiwidth=double
set nocopyindent
set nocindent
set list
set listchars=tab:>-,trail:~
set nobomb

let g:PHP_vintage_case_default_indent = 1

highlight PmenuSel ctermfg=0 ctermbg=3

" 預設值
set expandtab

autocmd FileType make set noexpandtab softtabstop=8

syntax on

au BufNewFile,BufRead *.phtml set filetype=php
au BufNewFile,BufRead *.htm set filetype=php
au BufNewFile,BufRead *.html set filetype=php
au FileType php so ~/.vim/indent/php.vim
