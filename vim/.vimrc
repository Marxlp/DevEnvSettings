colorscheme delek 
" show line number
set nu
" replace tab with space
set expandtab
" a tab will be replaced by 4 spaces
set ts=4
set shiftwidth=4
" indent automatically
set autoindent
" the space indented will be decided smart
set smartindent

" vim-plug
" install vim plug from github
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'

call plug#end()
