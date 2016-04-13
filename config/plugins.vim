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


" YouCompleteMe {
    set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
    " inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
    "上下左右键的行为 会显示其他信息
    " inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    " inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
    " inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
    " inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
    
    "youcompleteme  默认tab  s-tab 和自动补全冲突
    let g:ycm_key_list_select_completion=['<c-n>', '<Down>']
    let g:ycm_key_list_previous_completion=['<c-p>', '<Up>']
    let g:ycm_confirm_extra_conf=0 " 关闭加载.ycm_extra_conf.py提示
    
    let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
    let g:ycm_min_num_of_chars_for_completion=1	" 从第2个键入字符就开始罗列匹配项
    let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
    let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
    nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
    "nnoremap <leader>lo :lopen<CR>	"open locationlist
    "nnoremap <leader>lc :lclose<CR>	"close locationlist
    " inoremap <leader><leader> <C-x><C-o>
    "在注释输入中也能补全
    let g:ycm_complete_in_comments = 1
    "在字符串输入中也能补全
    let g:ycm_complete_in_strings = 1
    "注释和字符串中的文字也会被收入补全
    let g:ycm_collect_identifiers_from_comments_and_strings = 0
    "不查询ultisnips提供的代码模板补全，如果需要，设置成1即可  
    let g:ycm_use_ultisnips_completer=1  
    
    " 跳转到定义处
    nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
    nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
    nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
"}

" ultisnips {
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
    
    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
" }

" nerdtree {
    " 打开nerdtree
    nnoremap <leader>f\ :NERDTreeToggle<CR>
" }
