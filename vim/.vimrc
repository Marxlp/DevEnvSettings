colorscheme delek 
" set encoding
set encoding=utf-8
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
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"make python looks more beautiful
let python_highlight_all=1
syntax on
" vim-plug
" install vim plug from github
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
" fold structure tree viewer
Plug 'scrooloose/nerdtree'
" fold code plugin
Plug 'tmhedberg/SimpylFold'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'vim-scripts/indentpython.vim'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call plug#end()
