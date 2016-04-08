call plug#begin('~/.config/nvim/plugged')
" 改变状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Ctrl-P 快速文件切换
Plug 'kien/ctrlp.vim'

call plug#end()

" vim-airline {
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

" 打开tabline功能,方便查看Buffer和切换
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" }

