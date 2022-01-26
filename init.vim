"leader键
let mapleader = " "
"行号
set nu

"主题也搞一下吧
"let g:colorscheme_user_path = '~/.vim/bundle/vim-colorschemes/colors'
"|'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' |'darker-community'
" colorscheme gruvbox
" colorscheme molokai
" colorscheme seoul256
" colorscheme onehalflight

let g:gruvbox_contrast_dark = "soft"
" let g:gruvbox_contrast_light = "soft"
set t_Co=256

" Load the colorscheme
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

"鼠标
" set mouse+=a

" y复制到mac里
" set clipboard=unnamed
set clipboard=unnamedplus
"删除模式
"set backspace=2

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
set redrawtime=20000

"自动对齐
set autoindent
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

"右下标尺
set ruler

"显示输入的命令
set showcmd

" 帮助语言首选
set helplang=cn
" 菜单使用的语言
set langmenu=zh_CN.UTF-8
" 编码
set encoding=UTF-8

" 设置当文件被改动时自动载入
set autoread

set nocompatible              " 这是必需的 
filetype off                  " 这是必需的 

set cscopeprg='~/.vim/bundle/vim-gutentags/autoload/gutentags/gtags_cscope.vim'

" 在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim
" vundle初始化 
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'The-NERD-tree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
map r :NERDTreeToggle<CR>
"窗口大小
let NERDTreeWinSize=40

"窗口位置
let NERDTreeWinPos='left'

Plugin 'neovim/nvim-lspconfig'
" Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'williamboman/nvim-lsp-installer'

" Plugin 'ycm-core/YouCompleteMe'
" Plugin 'hrsh7th/nvim-compe'
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/nvim-cmp'
Plugin 'fatih/vim-go'

Plugin 'kaicataldo/material.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'airblade/vim-gitgutter'

Plugin 'vim-airline/vim-airline'

Plugin 'ryanoasis/vim-devicons'

" Plugin 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Plugin 'w0rp/ale'

Plugin 'vim-airline/vim-airline-themes'

"Plugin 'Chiel92/vim-autoformat'

Plugin 'rodnaph/vim-color-schemes'

" Plugin 'bkbncn/vim-colorschemes-picker'

" Plugin 'overcache/NeoSolarized'

Plugin 'scrooloose/nerdcommenter'

"彩虹括号
" Plugin 'luochen1990/rainbow'

Plugin 'ojroques/nvim-lspfuzzy'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" Plugin 'morhetz/gruvbox'
" Plugin 'jacoborus/tender'
" Plugin 'projekt0n/github-nvim-theme'
" Plugin 'ayu-theme/ayu-vim'
" Plugin 'junegunn/seoul256.vim'
" Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'navarasu/onedark.nvim'

Plugin 'iamcco/markdown-preview.nvim'

call vundle#end()            " 这是必需的
filetype plugin indent on    " 这是必需的

" onedark主题
lua << EOF
require('onedark').setup {
    style = 'darker',
    colors = {
        bright_orange = "#ff8800",    -- define a new color
        green = '#00ffaa',            -- redefine an existing color
        },
    highlights = {
        TSKeyword = {fg = '$green'},
        TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
        TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
        }
    }
require('onedark').load()
EOF

"括号
let g:rainbow_active = 1

"fzf
lua << EOF
require('lspfuzzy').setup {
    methods = 'all',         -- either 'all' or a list of LSP methods (see below)
    jump_one = true,         -- jump immediately if there is only one location
    fzf_preview = {          -- arguments to the FZF '--preview-window' option
    'up:+{2}-/2'          -- preview on the right and centered on entry
    },
fzf_action = {           -- FZF actions
['ctrl-t'] = 'tabedit',  -- go to location in a new tab
['ctrl-v'] = 'vsplit',   -- go to location in a vertical split
['ctrl-x'] = 'split',    -- go to location in a horizontal split
},
  fzf_modifier = ':~:.',   -- format FZF entries, see |filename-modifiers|
  fzf_trim = true,         -- trim FZF entries
  }
EOF
" lsp
" LSPINSTALLER START
lua << EOF
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
local opts = {}

-- (optional) Customize the options passed to the server
-- if server.name == "tsserver" then
--     opts.root_dir = function() ... end
-- end

-- This setup() function is exactly the same as lspconfig's setup function.
-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
server:setup(opts)
end)
local lsp_installer_servers = require'nvim-lsp-installer.servers'
local server_available, requested_server = lsp_installer_servers.get_server("rust_analyzer")
if server_available then
    requested_server:on_ready(function ()
    local opts = {}
    requested_server:setup(opts)
end)
if not requested_server:is_installed() then
    -- Queue the server to be installed
    requested_server:install()
end
end
lsp_installer.settings({
ui = {
    icons = {
        server_installed = "✓",
        server_pending = "➜",
        server_uninstalled = "✗"
        }
    }
})
EOF
" LSPINSTALLER END
" LSPINSTALL START
" lua << EOF
" local function setup_servers()
" require'lspinstall'.setup()
" local servers = require'lspinstall'.installed_servers()
" for _, server in pairs(servers) do
" require'lspconfig'[server].setup{}
" end
" end
" setup_servers()
" -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
" require'lspinstall'.post_install_hook = function ()
" setup_servers() -- reload installed servers
" vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
" end
" EOF
" LSPINSTALL END
"补全
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"git检查更新时间
set updatetime=100
nmap <S-d> :Gdiffsplit<CR>

" tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
noremap <C-h> :<C-U><C-R>=printf("bp")<CR><CR>
noremap <C-l> :<C-U><C-R>=printf("bn")<CR><CR>
" noremap <leader>3 :<C-U><C-R>=printf("tabprevious")<CR><CR>
" noremap <leader>4 :<C-U><C-R>=printf("tabnext")<CR><CR>

"永远显示状态栏
set laststatus=2
" let g:airline_theme='jellybeans'
" let g:airline_theme='wombat'
" let g:airline_theme='xtermlight'
" let g:airline_theme='molokai'
" let g:airline_theme='base16'
let g:airline_theme='onedark'
" %{strftime("%Y-%m-%d %H:%M:%S")}
let g:airline_section_z = '%P-%l/%L-%c'
let g:airline_section_c = '[%n]%f'
let g:airline#extensions#hunks#enabled= 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_skip_empty_sections = 1
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#searchcount#enabled = 1 

" 使用 powerline 外观
let g:airline_powerline_fonts = 1

"目录收藏默认打开
let NERDTreeShowBookmarks=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeFileExtensionHighlightFullName = 1

" icons
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" leaderf
" let g:Lf_Ctags = '/usr/local/Cellar/universal-ctags/HEAD-b5cd9f4/bin/ctags'
" " don't show the help in normal mode
" let g:Lf_HideHelp = 1
" let g:Lf_UseCache = 0
" let g:Lf_UseVersionControlTool = 0 
" let g:Lf_IgnoreCurrentBufferName = 0
" " popup mode
" let g:Lf_WindowPosition = 'popup'
" let g:Lf_PreviewInPopup = 1
" let g:Lf_PreviewResult = {
" \ 'File': 0,
" \ 'Buffer': 0,
" \ 'Mru': 0,
" \ 'Tag': 0,
" \ 'BufTag': 1,
" \ 'Function': 1,
" \ 'Line': 1,
" \ 'Colorscheme': 0,
" \ 'Rg': 0,
" \ 'Gtags': 0
" \}
" let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>ff :<C-U><C-R>=printf("Files")<CR><CR>
" noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("History")<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("BTags")<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("BLines")<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("LeaderfFunction")<CR><CR>

" should use `Leaderf gtags --update` first
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
nnoremap <silent><leader>fr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent><leader>fd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><leader>fk <cmd>lua vim.lsp.buf.hover()<CR>'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --result ctags-x", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --result ctags-x", expand("<cword>"))<CR><CR>
"noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s --result ctags-x", "")<CR><CR>
"noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s --result ctags-x ", "")<CR><CR>

" noremap <C-D> :<C-U><C-R>=printf("Leaderf! rg -g '*.php' -g '*.go' -e %s", expand("<cword>"))<CR>
" noremap <leader>rg :<C-U><C-R>=printf("Leaderf! rg ")<CR>
noremap <C-D> :<C-U><C-R>=printf("Rg %s", expand("<cword>"))<CR>

" neovim不支持这种弹框
" set completeopt += popup
set completeopt=menu,menuone,noselect

" nvim-cmp
  lua <<EOF
    local cmp = require'cmp'
    -- Global setup.
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
          -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
          -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
      },
      mapping = {
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
        ['<tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-e>'] = cmp.mapping({
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        }),
        -- Accept currently selected item. If none selected, `select` first item.
        -- Set `select` to `false` to only confirm explicitly selected items.
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'snippy' }, -- For snippy users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
      }, {
        { name = 'buffer' },
      })
    })
    -- `/` cmdline setup.
    cmp.setup.cmdline('/', {
      sources = {
        { name = 'buffer' }
      }
    })
--    -- `:` cmdline setup.
--    cmp.setup.cmdline(':', {
--      sources = cmp.config.sources({
--        { name = 'path' }
--      }, {
--        { name = 'cmdline' }
--      })
--    })
EOF

" 语法检查
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

" 注释的时候自动加个空格, 强迫症必配
let g:NERDSpaceDelims=1
let g:NERDDefaultAlign='left'

" 自定义快捷键
noremap <leader>fw :<C-U><C-R>=printf("/%s\\C", expand("<cword>"))<CR><CR>
noremap <leader>nh :<C-U><C-R>=printf("noh")<CR><CR>
noremap <C-s> :<C-U><C-R>=printf("w")<CR><CR>
noremap <C-q> :<C-U><C-R>=printf("q")<CR><CR>
noremap <C-x> :<C-U><C-R>=printf("bd")<CR><CR>
nmap w] :resize +2<CR>
nmap w[ :resize -2<CR>
nmap w- :vertical resize -2<CR>
nmap w= :vertical resize +2<CR>
