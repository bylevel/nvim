" 公共配置

" 设置python支持
let g:python_host_prog = '/usr/bin/python'

" 基本配置 {
    " 设置显示行号
    set number
    " 设置高亮主题
    syntax enable
    set background=dark
    colorscheme solarized
    " 突出显示当前行
    set cursorline
    " 设定 tab 长度为 4
    set tabstop=4
    " 设定 << 和 >> 命令移动时的宽度为 4
    set shiftwidth=4
    " 按tab进转换成space
    set expandtab
    " 软tab长度为4
    set softtabstop=4
    " 智能tab
    set smarttab
    " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
    set ignorecase smartcase
    " 关闭错误信息响铃
    set noerrorbells
    " 插入括号时，短暂地跳转到匹配的对应括号
    set showmatch
    " 短暂跳转到匹配括号的时间
    set matchtime=2
    " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
    set hidden
    " 开启新行时使用智能自动缩进
    set smartindent
    " 显示不可见字符
    set list
    " 设置不可见字符
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
" }


" 对接系统剪贴板 {
    set clipboard+=unnamedplus
" }
