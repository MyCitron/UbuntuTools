"author:Citron
"date:2017/10/7

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""
"  setting for:           "
"       vundle            "
"""""""""""""""""""""""""""
set nocompatible                         "去除vi的一致性
filetype off                             "关闭filetype
set rtp+=~/.vim/bundle/Vundle.vim        "设置运行路径      
call vundle#begin()                      "初始化vundle
""""""""""""""""""""""""""""""
"   插件地址                 "
""""""""""""""""""""""""""""""
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""
" 通用设置                "
"""""""""""""""""""""""""""

filetype plugin indent on              "语法高亮 
syntax on                              "自动语法高亮
set nu                                 "显示行号
autocmd InsertLeave * se nocul         "非浅色高亮显示其他行
autocmd InsertEnter * se cul           "浅色高亮显示当前行
set ruler                              "显示光标位置
set foldmethod=manual                  "允许折叠
set nocompatible                       "关闭vi兼容
vmap<C-c>+y                            "选中模式下Ctrl+c复制
set completeopt=preview,menu           "代码补全
set ignorecase                         "搜索忽略大小写
set shortmess=atI                      "启动时候隐藏帮助提示
set nobackup                           "不需要备份
set confirm                            "没有保存或文件只读时弹出提示
set tabstop=4                          "table 缩进
set shiftwidth=4                       "shift 缩进
set expandtab                          "table 扩展
set smarttab                           "table 扩展
set autoread                           "自动检测文件外部更改
set smartindent                        "智能缩进
set hlsearch                           "高亮显示匹配
set fdm=syntax                         "根据语法自动折叠
set novisualbell                       "光标不要闪烁
set showcmd                            "显示当前输入的命令




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""
"   magic func:            "
"   Quickly Run            "
""""""""""""""""""""""""""""
map<F5>:call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype=='c'
       exec "!g++ % -o %<"
       exec "!time ./%<"
    elseif &filetype=="cpp"
       exec "!g++ % -o %<"
       exec "!time ./%<"
    elseif &filetype=='py'
       exec "!time python3.5 %"
    endif
endfunc 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""
"  键盘映射            "
"                      "
""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTreeType") && b:NERDTreeType=="primary")|q|endif    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""power-line""""""""""""""""""""""
set laststatus=2
let g:Powerline_symbols='unicode'


let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
