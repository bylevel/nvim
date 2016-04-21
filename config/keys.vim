" 基础快捷键配置

" 设置 leader 键为space
let mapleader=" "

" 打开 init.vim 配置文件
nmap <silent> <leader>fv :e $MYVIMRC<CR>
" 从当前文件的相对位置打开文件
nmap <leader>ff :CtrlPCurFile<CR>
" 保存文件
nmap <silent> <leader>fs :w<CR>
" buffer next
nmap <silent> <leader>bn :bn<CR>
" buffer previous
nmap <silent> <leader>bp :bp<CR>
" buffer delete
nmap <leader>bd :bd
" 关闭当前窗口
nmap <leader>qq :q<CR>

" 打开SourceTree
nnoremap <leader>ogs :call funcs#OpenSourceTree()<CR>

" 横向分割窗口
nnoremap <leader>ss :split<CR>
" 纵向分割窗口
nnoremap <leader>sv :vsplit<CR>
" 关闭当前窗口
nnoremap <leader>sc :hide<CR>
