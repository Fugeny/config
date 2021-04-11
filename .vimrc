call plug#begin('~/.vim/plugged')

" 代码补全
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
"Plug 'YanhaoMo/snippets'
Plug 'skywind3000/vim-auto-popmenu'
Plug 'skywind3000/vim-dict'

" 文件搜索
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'

" 代码浏览
Plug 'majutsushi/tagbar'

" 语法检查
Plug 'w0rp/ale'

" 符号自动补全
Plug 'Raimondi/delimitMate'

" 注释
Plug 'scrooloose/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'

Plug 'Yggdroot/indentLine'

call plug#end()

" *************** vim常用的基本设置 ***************
set nocompatible                                                " 不使用vi的键盘模式，而是vim自己的
"syntax enable                                                   " 开启语法高亮功能
syntax on                                                       " 语法高亮支持
set nu                                                          " 显示行号
"set rnu                                                         " 显示相对行号
set wrap                                                        " 当一行文字很长时换行
"set nowrap                                                      " 当一行文字很长时取消换行
set showmatch                                                   " 当光标移动到一个括号时高亮显示对应的另一个括号
set showcmd                                                     " 回显输入的命令
set showmode                                                    " 显示当前的模式
set clipboard+=unnamed                                          " 关联系统的剪贴板
set ruler                                                       " 在编辑过程中右下角显示光标的行列信息
set nocp                                                        " 让Vim工作在不兼容模式下
set shortmess=atI                                               " 启动时不显示捐助乌干达儿童的提示
set so=6                                                        " 上下滚行时空余6行
set autoindent                                                  " 自动套用上一行的缩进方式
set smartindent                                                 " 智能缩进
set mouse=a                                                     " 开启鼠标支持
set laststatus=2                                                " 总是显示状态行
set backspace=indent,eol,start                                  " 对退格键提供更好的支持
set ts=4                                                        " 设置tab长度为4
set sts=4                                                       " 设置制表符宽度
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
"设置缩进空格数
set expandtab                                                   " 用空格代替tab键
set smarttab                                                    " 更加智能的tab键
set hid                                                         " 当buffer被丢弃时隐藏它
set encoding=utf-8                                              " 默认使用utf-8编码格式
set fileencodings=utf-8,cp936,gb18030,big5,euc-kr,latin1        " 自动判断编码时 依次尝试一下编码
set ffs=unix,dos,mac                                            " 设置文件类型
set hlsearch                                                    " 高亮搜索内容
set ignorecase                                                  " 搜索模式里忽略大小写
set smartcase                                                   " 如果搜索字符串里包含大写字母，则禁用 ignorecase
set incsearch                                                   " 显示搜索的动态匹配效果
set lazyredraw                                                  " 解决某些类型的文件由于syntax导致vim反应过慢的问题
set ttyfast                                                     " 平滑地变化
set cc=80                                                       " 第80字符处显示分隔符
set foldmethod=indent                                           " 折叠方式
set nofoldenable                                                " 不自动折叠
set foldcolumn=1                                                " 在行号前空出一列的宽度
set t_Co=256                                                    " 设置256真彩色
set history=1000                                                " 设置历史记录条数
"set autoread                                                   " 当文件在外部被修改时自动载入
"set cindent                                                    " 使用c语言的缩进格式
"set whichwrap+=<,>,h,l                                         " 允许backspace和光标键跨越行边界
"set cmdheight=2                                                " 显示两行命令行

" 格式化状态行显示的内容
set statusline=[%t]\ %y\ %m%=%{&fileencoding}\ [%{&ff}]\ [%l,\ %c]\ [%L]\ [%p%%]

" 打开一个文件自动定位到上一次退出的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" 保存.vim文件后不用退出即可生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
"au! bufwritepost .vimrc source %


" ************** 备份设置 ****************
"set nobackup                                                   " 不进行备份
"set nowb                                                       " 重新载入文件时不要备份
"set noswapfile                                                 " 不使用swf文件，可能导致错误无法恢复


" *************** 关闭错误声音 **************
set noerrorbells
set novisualbell
set  t_vb=


" **************** 设置vim主题外观 ***************
"set background=light                                           " 设置vim背景为浅色
set background=dark                                             " 设置vim背景为深色
set cursorline                                                  " 突出显示当前行
set cursorcolumn                                                " 突出显示当前列

"colorscheme molokai                                             " 设置molokai高亮主题
"colorscheme desert                                              " 设置desert高亮主题
"let g:solarized_termcolors=256
"colorscheme solarized                                           " 设置solarized高亮主题
"let g:gruvbox_termcolors=16
colorscheme gruvbox                                             " 设置gruvbox高亮主题


" ************** vim的配色 **************
"hi CursorLine cterm=NONE ctermbg=237 ctermfg=NONE
"hi CursorColumn cterm=NONE ctermbg=237 ctermfg=NONE
"hi vertsplit ctermbg=bg guibg=bg
"hi GitGutterAdd ctermbg=bg guibg=bg
"hi GitGutterChange ctermbg=bg guibg=bg
"hi GitGutterDelete ctermbg=bg guibg=bg
"hi GitGutterChangeDelete ctermbg=bg guibg=bg
"hi SyntasticErrorSign ctermbg=bg guibg=bg
"hi SyntasticWarningSign ctermbg=bg guibg=bg
"hi FoldColumn ctermbg=bg guibg=bg

" 修改<leader>的键盘映射
nmap ' <leader>

" *********** UltiSnips插件配置 **********
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit = "vertical"
"let g:UltiSnipsSnippetDirectories = ["plugged/snippets"]

" *********** vim-auto-popmenu 轻量级补全插件 *******
let g:apc_enable_ft = {'*':1}
set cpt=.,k,w,b
set completeopt=menu,menuone,noselect
set shortmess+=c

" *********** NERDTree插件配置 ***********
let NERDTreeChDirMode=2                                         " 设置当前目录为nerdtree的起始目录
let NERDChristmasTree=1                                         " 使得窗口有更好看的效果
let NERDTreeMouseMode=1                                         " 双击鼠标左键打开文件
let NERDTreeWinSize=25                                          " 设置窗口宽度为25
let NERDTreeQuitOnOpen=1
" 当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif

" *********** 代码检查 ******************
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

" *********** 注释 **********************
" 为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
" 修改注释风格
autocmd FileType java,c,cpp set commentstring=//\ %s

" Tagbar插件配置
let g:tagbar_ctags_bin = 'ctags' " tagbar 依赖 ctags 插件
let g:tagbar_width     = 30      " 设置 tagbar 的宽度为 30 列，默认 40 列
let g:tagbar_autofocus = 1       " 打开 tagbar 时光标在 tagbar 页面内，默认在 vim 打开的文件内
let g:tagbar_left      = 1       " 让 tagbar 在页面左侧显示，默认右边
"let g:tagbar_sort      = 0       " 标签不排序，默认排序
"map <leader>t :TagbarToggle<CR>

" ********** 映射 ********************
map <F2> :TagbarToggle<CR>
map <F4> :NERDTreeMirror<CR>
map <F4> :NERDTreeToggle<CR>
map <F12> :!ctags -R <leader>cd<CR>
set tags=./tags,../tags,../*/tags
