syntax on

set bs=2

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set runtimepath+=$HOME/.vim

colorscheme wombat

call pathogen#infect()

let g:xptemplate_key = '<Tab>'

autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()
