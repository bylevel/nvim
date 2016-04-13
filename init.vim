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
    " wakatime 记录写代码的时间
    Plug 'wakatime/vim-wakatime'
    " ultisnip 插件
    Plug 'SirVer/ultisnips'
    " 通用snippet
    Plug 'honza/vim-snippets'
call plug#end()

" 加载公共配置
source ~/.config/nvim/config/global.vim
" 加载基础快捷键配置
source ~/.config/nvim/config/keys.vim
" 加载插件配置
source ~/.config/nvim/config/plugins.vim

