"leader键
let mapleader = " "
"行号
set nu
"相对行号
set relativenumber

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

"鼠标
"set mouse+=a

" y复制到mac里
set clipboard=unnamed
"删除模式
set backspace=2

"不默认产生副本
set nobackup

set binary

"搜索高亮
set hlsearch

" 禁止折行
"set nowrap
" 折叠
" set foldmethod=marker

"语法高亮
syntax on

"自动对齐
autocmd BufReadPost * setlocal autoindent
" 检测文件类型
filetype on

" 针对不同的文件，采用不同的缩进方式
filetype indent on
" 将制表符扩展为空格
set expandtab
"tab缩进
set tabstop=4
set shiftwidth=4

"显示匹配
" set showmatch
"括号高亮关掉
let loaded_matchparen=0
"忽略大小写查找
set ic

"补全
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"inoremap ( ()<ESC>i

"cmdline
set wildmenu
set wildoptions=pum

"右下标尺
set ruler

"显示输入的命令
set showcmd

" 帮助语言首选
set helplang=cn
" 菜单使用的语言
set langmenu=zh_CN.UTF-8

" 设置当文件被改动时自动载入
set autoread

set nocompatible              " 这是必需的 
filetype off                  " 这是必需的 

" 在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim
" vundle初始化 
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'The-NERD-tree'
map <F2> :NERDTreeToggle<CR>
"窗口大小
let NERDTreeWinSize=35

"窗口位置
let NERDTreeWinPos='left'

Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'fatih/vim-go'
Plugin 'buoto/gotests-vim'

Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'

Plugin 'ryanoasis/vim-devicons'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'Chiel92/vim-autoformat'

Plugin 'Yggdroot/indentLine'

Plugin 'scrooloose/nerdcommenter'

"彩虹括号
" Plugin 'luochen1990/rainbow'

Plugin 'ap/vim-css-color'

"fzf搜索
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

"翻译
Plugin 'voldikss/vim-translator'

"colors
Plugin 'morhetz/gruvbox'
Plugin 'jacoborus/tender'
Plugin 'ayu-theme/ayu-vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'kyoz/purify', { 'rtp': 'vim' }

"高亮优化
Plugin 'sheerun/vim-polyglot'

call vundle#end()            " 这是必需的
filetype plugin indent on    " 这是必需的

"主题也搞一下吧
"colorscheme gruvbox
"colorscheme onehalfdark
"let g:gruvbox_contrast_dark = "dark"
" let g:gruvbox_contrast_light = "soft"
set t_Co=256
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
colorscheme purify

"rainbow 括号
"let g:rainbow_active = 1

"git检查更新时间
set updatetime=500
nmap <S-d> :Gvdiffsplit<CR>

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" noremap <leader>3 :<C-U><C-R>=printf("tabprevious")<CR><CR>
" noremap <leader>4 :<C-U><C-R>=printf("tabnext")<CR><CR>
"永远显示状态栏
set laststatus=2
"let g:airline_theme='jellybeans'
"let g:airline_theme='wombat'
let g:airline_theme='purify'
"let g:airline_theme='molokai'
"let g:airline_theme='base16'
"let g:airline_theme='onedark'
"let g:airline_theme='gruvbox'
"let g:airline_theme='transparent'
"let g:airline_section_z = '%P-%l/%L-%c'
let g:airline_section_c = '%t'
let g:airline#extensions#hunks#enabled= 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_skip_empty_sections = 1
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#searchcount#enabled = 1 
let g:airline#extensions#whitespace#enabled = 0 
"使用 powerline 外观
"let g:airline_powerline_fonts = 1

"目录收藏默认打开
let NERDTreeShowBookmarks=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

noremap <leader>ff :<C-U><C-R>=printf("Files")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("History")<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("BTags")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("BLines")<CR><CR>
noremap <leader>rg :<C-U><C-R>=printf("Rg %s", expand("<cword>"))<CR>
noremap <leader>fg :<C-U><C-R>=printf("Rg"))<CR>

" 语法检查
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" 注释的时候自动加个空格, 强迫症必配
"let g:NERDSpaceDelims=1
"删除注释尾部空格 
let g:NERDTrimTrailingWhitespace = 1

"翻译
let g:translator_default_engines = ['bing','google']
let g:translator_proxy_url = 'socks5://127.0.0.1:1086'

"fzf
map <F12> :LspDocumentSymbol<CR>
noremap <leader>ff :<C-U><C-R>=printf("Files")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("History")<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("BTags")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("BLines")<CR><CR>
noremap <leader>rg :<C-U><C-R>=printf("Rg")<CR><CR>
noremap <leader>fg :<C-U><C-R>=printf("Rg %s", expand("<cword>"))<CR><CR>

"lsp
noremap <leader>fd :<C-U><C-R>=printf("LspDefinition")<CR><CR>
noremap <leader>fr :<C-U><C-R>=printf("LspReferences")<CR><CR>
noremap <leader>fi :<C-U><C-R>=printf("LspImplementation")<CR><CR>
noremap <leader>fe :<C-U><C-R>=printf("LspDocumentDiagnostics")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("qucikfix")<CR><CR>
noremap <leader>fh :<C-U><C-R>=printf("LspHover")<CR><CR>
"let g:lsp_diagnostics_enabled = 0
let g:lsp_document_code_action_signs_enabled = 0
let g:lsp_diagnostics_highlights_enabled = 0
if executable('intelephense')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'intelephense',
        \ 'cmd': {server_info->['intelephense']},
        \ 'allowlist': ['php','phtml'],
        \ })
endif
if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls']},
        \ 'allowlist': ['go'],
        \ })
endif


"补全
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" 自定义快捷键
noremap <leader>fw :<C-U><C-R>=printf("/%s\\C", expand("<cword>"))<CR><CR>
noremap <leader>nh :<C-U><C-R>=printf("noh")<CR><CR>
noremap <C-s> :<C-U><C-R>=printf("w")<CR><CR>
noremap <C-q> :<C-U><C-R>=printf("q")<CR><CR>
noremap <C-x> :<C-U><C-R>=printf("bd")<CR><CR>
noremap <C-h> :<C-U><C-R>=printf("bp")<CR><CR>
noremap <C-l> :<C-U><C-R>=printf("bn")<CR><CR>
nmap w] :resize +2<CR>
nmap w[ :resize -2<CR>
nmap w- :vertical resize -2<CR>
nmap w= :vertical resize +2<CR>
noremap <C-j> :cn<CR>
noremap <C-k> :cp<CR>
noremap <S-q> :windo lcl\|ccl<CR>
noremap <leader>cpf :let @+ = expand('%:p')<CR>
noremap <leader>cpw :let @+ = expand('%').expand('::').expand('<cWORD>')<CR>