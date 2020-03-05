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

" YCM Configuration
" default configuration file path "
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"python path
let g:ycm_path_to_python_interpreter='/usr/bin/python'
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
