" 常用函数

silent function! OSX()
    return has('macunix')
endfunction
silent function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction
silent function! WINDOWS()
    return  (has('win32') || has('win64'))
endfunction

" 打开 SourceTree
function! OpenSourceTree()
    " 当前文件所在文件夹的绝对路径
    let l:file_wd = expand('%:p:h')
    " 当前文件夹路径
    let l:current_wd = getcwd()
    " 切换当前路径到当前文件所在文件夹
    execute ':lcd' . l:file_wd
    " 打开 SourceTree
    execute '!stree'
    " 切换回当前路径
    execute ':lcd' . current_wd
endfunction
