" 所有插件的配置信息

" vim-airline {
    let g:airline_theme='papercolor'
    let g:airline_powerline_fonts = 1
    
    " 打开tabline功能,方便查看Buffer和切换
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_nr_show = 1
" }

" jsx语法高亮 {
    let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" }

" easy-motion {
    map  <Leader>m <Plug>(easymotion-bd-f)
    nmap <Leader>m <Plug>(easymotion-overwin-f)
" }

" ctrlp {
    " 打开ctrl的buffer列表
    nmap <silent> <Leader>bb :CtrlPBuffer<cr>
" }
