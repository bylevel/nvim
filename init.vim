call plug#begin('~/.config/nvim/plugged')
" 改变状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Ctrl-P 快速文件切换
Plug 'kien/ctrlp.vim'
" jsx 语法高亮支持
Plug 'mxw/vim-jsx'
" 高亮git修改
Plug 'airblade/vim-gitgutter'
" 相对行号
Plug 'myusuf3/numbers.vim'
" 快速定位屏幕上的指定位置
Plug 'easymotion/vim-easymotion'
" 代码高亮主题
Plug 'altercation/vim-colors-solarized'
" 注释插件
Plug 'tomtom/tcomment_vim'
" 神器YouCompleteMe
Plug 'Valloric/YouCompleteMe'

call plug#end()

" 设置 leader 键
let mapleader=" "

nmap <silent> <leader>ev :e $MYVIMRC<CR>

" 设置python支持
let g:python_host_prog = '/usr/bin/python'

" vim 基本配置 {
" 设置显示行号
set number
" 设置高亮主题
syntax enable
set background=dark
colorscheme solarized
" }

" vim-airline {
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1

" 打开tabline功能,方便查看Buffer和切换
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
" }

" 对接系统剪贴板 {
set clipboard+=unnamedplus
" }

" jsx语法高亮 {
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" }

" easy-motion {
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" }
