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

augroup phpfiletype
    autocmd!
    autocmd FileType php set expandtab
augroup END

augroup tsfiletype
    autocmd!
    autocmd FileType ts set expandtab
augroup END

syntax on

au BufNewFile,BufRead *.phtml set filetype=php
au BufNewFile,BufRead *.htm set filetype=php
au BufNewFile,BufRead *.html set filetype=php
au FileType php so ~/.vim/indent/php.vim
