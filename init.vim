call plug#begin('~/.config/nvim/plugged')
    " 改变状态栏
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ctrl-P 快速文件切换
    Plug 'kien/ctrlp.vim'
    " 快速跳转当前文档中的函数
    Plug 'tacahiroy/ctrlp-funky'
    " 使用 python 加速 ctrlp
    Plug 'FelikZ/ctrlp-py-matcher'
    " jsx 语法高亮支持
    Plug 'mxw/vim-jsx'
    " javascript 支持
    " Plug 'pangloss/vim-javascript'
    " 高亮git修改
    Plug 'airblade/vim-gitgutter'
    " 操作git
    Plug 'tpope/vim-fugitive'
    " 相对行号
    Plug 'myusuf3/numbers.vim'
    " 快速定位屏幕上的指定位置
    Plug 'easymotion/vim-easymotion'
    " 代码高亮主题
    Plug 'altercation/vim-colors-solarized'
    " 注释插件
    Plug 'tomtom/tcomment_vim'
    " 神器YouCompleteMe
    " Plug 'Valloric/YouCompleteMe'
    " 异步的补全插件
    Plug 'Shougo/deoplete.nvim'
    " wakatime 记录写代码的时间
    Plug 'wakatime/vim-wakatime'
    " ultisnip 插件
    Plug 'SirVer/ultisnips'
    " 通用snippet
    Plug 'honza/vim-snippets'
    " 文件树管理
    Plug 'scrooloose/nerdtree'
    " 一个通用的搜索工具
    Plug 'Shougo/unite.vim'
    " 格式化js代码
    Plug 'millermedeiros/vim-esformatter'
    " 自动扩展选中范围
    Plug 'terryma/vim-expand-region'
    " 多光标操作
    Plug 'terryma/vim-multiple-cursors'
    " undo 树
    Plug 'sjl/gundo.vim'
    " Golang 开发插件
    Plug 'fatih/vim-go'
    " 代码检查
    Plug 'scrooloose/syntastic'
    " python 开发环境
    Plug 'klen/python-mode'
    " 自动补全括号
    Plug 'Raimondi/delimitMate'
    " 自动补全html的tag
    Plug 'alvan/vim-closetag'
    " 快速文件搜索
    Plug 'dyng/ctrlsf.vim'
    " 显示tag
    Plug 'majutsushi/tagbar'
    " html5 支持
    Plug 'othree/html5.vim'
    " emmet 快速编写html
    Plug 'mattn/emmet-vim'
    " scss 支持
    Plug 'cakebaker/scss-syntax.vim'
    " css3, less, stylus 支持
    Plug 'hail2u/vim-css3-syntax'
    " es6, es7 高亮支持
    Plug 'pangloss/vim-javascript'
    " 基于Unite的历史记录
    Plug 'Shougo/neoyank.vim'
    " 显示缩进高亮
    Plug 'Yggdroot/indentLine'
    " 搜索时限时显示全部高亮
    Plug 'haya14busa/incsearch.vim'
    " 高亮显示匹配的 html tag标签
    Plug 'valloric/matchtagalways'
    " sudo 方式打开 :e sudo:/etc/passwd
    Plug 'sudo.vim'
call plug#end()

" 加载函数
source ~/.config/nvim/config/funcs.vim
" 加载公共配置
source ~/.config/nvim/config/global.vim
" 加载基础快捷键配置
source ~/.config/nvim/config/keys.vim
" 加载插件配置
source ~/.config/nvim/config/plugins.vim

