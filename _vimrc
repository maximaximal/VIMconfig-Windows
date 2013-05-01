syntax on

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set runtimepath+=$HOME/.vim

colorscheme wombat

call pathogen#infect()

let g:xptemplate_key = '<Tab>'

autocmd! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

nmap <silent> <unique> + <Plug>nextvalInc
nmap <silent> <unique> - <Plug>nextvalDec

inoremap <c-s> <Esc>:Update<CR>
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
imap <c-s> <Esc><c-s>

" Tagbar
nmap <F8> :TagbarToggle<CR>
