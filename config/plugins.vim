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
    nmap <silent> <Leader>pf :CtrlP<cr>
    " 多个版本控制系统
    let g:ctrlp_user_command = {
                \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files'],
                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
                \ },
                \ 'fallback': 'find %s -type f'
                \ }
    " 使用 python 的 match 算法
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
    " 基于路径显示
    let g:ctrlp_funky_matchtype = 'path'
    " 高亮显示当前查找的函数
    let g:ctrlp_funky_syntax_highlight = 1
    nnoremap <Leader>fu :CtrlPFunky<Cr>
" }


" YouCompleteMe {
    set completeopt=longest,menu  "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif  "离开插入模式后自动关闭预览窗口
    " inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"  "回车即选中当前项
    "上下左右键的行为 会显示其他信息
    " inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
    " inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
    " inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
    " inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

    "youcompleteme  默认tab  s-tab 和自动补全冲突
    let g:ycm_key_list_select_completion=['<c-n>', '<Down>']
    let g:ycm_key_list_previous_completion=['<c-p>', '<Up>']
    let g:ycm_confirm_extra_conf=0 " 关闭加载.ycm_extra_conf.py提示

    let g:ycm_collect_identifiers_from_tags_files=1  " 开启 YCM 基于标签引擎
    let g:ycm_min_num_of_chars_for_completion=1  " 从第2个键入字符就开始罗列匹配项
    let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
    let g:ycm_seed_identifiers_with_syntax=1  " 语法关键字补全
    nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>  "force recomile with syntastic
    " nnoremap <leader>lo :lopen<CR>  "open locationlist
    " nnoremap <leader>lc :lclose<CR>  "close locationlist
    " inoremap <leader><leader> <C-x><C-o>
    " 在注释输入中也能补全
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

" esformatter {
    " 绑定快捷键
    autocmd FileType javascript nnoremap <buffer> <leader>ef :Esformatter<CR>
    autocmd FileType javascript vnoremap <silent> <leader>ef :EsformatterVisual<CR>
" }

" gundo {
    nnoremap <leader>uu :GundoToggle<CR>
" }

" Syntastic {
    " 设置错误符号
    let g:syntastic_error_symbol='✗'
    " 设置警告符号
    let g:syntastic_warning_symbol='⚠'
    " 是否在打开文件时检查
    let g:syntastic_check_on_open=0
    " 是否在保存文件后检查
    let g:syntastic_check_on_wq=1
" }

" vim-go {
    " 设置 go 的代码检查
    let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
    let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

    " 显示 info
    autocmd FileType go nnoremap <silent> <leader>lgi :GoInfo<CR>
    autocmd FileType go nnoremap <silent> <leader>lgr :GoRename<CR>
" }

" python-mode {
    " autopep8
    autocmd FileType python nnoremap <silent> <leader>lpp :PymodeLintAuto<CR>
" }

" delimitMate {
    " for python docstring ", 特别有用
    au FileType python let b:delimitMate_nesting_quotes = ['"']
    " 关闭某些类型文件的自动补全
    " au FileType mail let b:delimitMate_autoclose = 0
" }

" vim-closetag {
    " 只在.html, .xhtml, .xml, plist, phtml文件中有效
    let g:closetag_filenames = "*.html,*.xml,*.plist,*.xhtml,*.phtml"
" }

" tagbar {
    " 开启TagBar
    nnoremap <leader>tb :TagbarToggle<CR>
" }

" CtrlSF {
    " 打开CtrlSF搜索框
    nnoremap <leader>qf :CtrlSF
" }

" scss {
    autocmd BufRead,BufNewFile *.scss set filetype=scss.css
" }

" Unite {
    " 显示历史剪贴板记录
    nnoremap <leader>quy :Unite history/yank<CR>
" }

" indentLine {
    " 设置颜色
    let g:indentLine_color_term = 9
" }

" incsearch {
    set hlsearch
    let g:incsearch#auto_nohlsearch = 1
    map /  <Plug>(incsearch-forward)
    map ?  <Plug>(incsearch-backward)
    map g/ <Plug>(incsearch-stay)
    map n  <Plug>(incsearch-nohl-n)
    map N  <Plug>(incsearch-nohl-N)
    map *  <Plug>(incsearch-nohl-*)
    map #  <Plug>(incsearch-nohl-#)
    map g* <Plug>(incsearch-nohl-g*)
    map g# <Plug>(incsearch-nohl-g#)
" }

" deoplete {
    " neocomplete like
    set completeopt+=noinsert
    " deoplete.nvim recommend
    set completeopt+=noselect

    " 开启nvim时自动启用deoplete.
    let g:deoplete#enable_at_startup = 1

    " deoplete-go settings
    let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" }
