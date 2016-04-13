" 基础快捷键配置

" 设置 leader 键为space
let mapleader=" "

" 打开 init.vim 配置文件
nmap <silent> <leader>fv :e $MYVIMRC<CR>
" 从当前文件的相对位置打开文件
nmap <leader>ff :e %:h/
" 保存文件
nmap <silent> <leader>fs :w<CR>
" buffer next
nmap <silent> <leader>bn :bn<CR>
" buffer previous
nmap <silent> <leader>bp :bp<CR>
" buffer delete
nmap <leader>bd :bd
" 关闭当前窗口
nmap <leader>qq :q
