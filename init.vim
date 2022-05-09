"leader键
let mapleader = " "
"行号
set nu
"相对行号
set relativenumber

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

" 二进制
set binary

"搜索高亮
set hlsearch

" 禁止折行
"set nowrap
" 折叠
" set foldmethod=marker

"语法高亮
syntax  on

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
" inoremap [ []<ESC>i
" inoremap { {}<ESC>i
" inoremap ' ''<ESC>i
" inoremap " ""<ESC>i
" inoremap ( ()<ESC>i

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

" 在此设置运行时路径 
set rtp+=~/.vim/bundle/Vundle.vim
" vundle初始化 
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
map <F2> :NERDTreeToggle<CR>
"窗口大小
let NERDTreeWinSize=30

"窗口位置
let NERDTreeWinPos='left'

Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plugin 'neovim/nvim-lspconfig'
Plugin 'williamboman/nvim-lsp-installer'
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/cmp-nvim-lsp-signature-help'
Plugin 'hrsh7th/nvim-cmp'
Plugin 'fatih/vim-go'
Plugin 'simrat39/symbols-outline.nvim'
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

Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'

" 翻译
Plugin 'voldikss/vim-translator'

" colors
Plugin 'morhetz/gruvbox'
Plugin 'jacoborus/tender'
Plugin 'projekt0n/github-nvim-theme'
Plugin 'ayu-theme/ayu-vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'navarasu/onedark.nvim'
Plugin 'catppuccin/nvim', {'name': 'catppuccin'}
Plugin 'marko-cerovac/material.nvim'

" 平滑移动
Plugin 'psliwka/vim-smoothie'

call vundle#end()            " 这是必需的
filetype plugin indent on    " 这是必需的

"rainbow 括号
"let g:rainbow_active = 1

"主题也搞一下吧
set t_Co=256

" onedark主题
"lua << EOF
"-- require('onedark').setup {
"--     style = 'darker',
"--     colors = {
"--         bright_orange = "#ff8800",    -- define a new color
"--         green = '#00ffaa',            -- redefine an existing color
"--         },
"--     highlights = {
"--         TSKeyword = {fg = '$green'},
"--         TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
"--         TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
"--         }
"--     }
"-- require('onedark').load()
"EOF

"catppuccin
"lua << EOF
"local catppuccin = require("catppuccin")
"-- configure it
"catppuccin.setup{
"transparent_background = true,
"term_colors = false,
"styles = {
"    comments = "italic",
"    functions = "italic",
"    keywords = "italic",
"    strings = "italic",
"    variables = "italic",
"},
"integrations = {
"    treesitter = true,
"    native_lsp = {
"        enabled = true,
"        virtual_text = {
"            errors = "italic",
"            hints = "italic",
"            warnings = "italic",
"            information = "italic",
"        },
"        underlines = {
"            errors = "underline",
"            hints = "underline",
"            warnings = "underline",
"            information = "underline",
"        },
"    },
"    lsp_trouble = false,
"    cmp = true,
"    lsp_saga = false,
"    gitgutter = false,
"    gitsigns = true,
"    telescope = true,
"    nvimtree = {
"        enabled = true,
"        show_root = true,
"        transparent_panel = false,
"    },
"    neotree = {
"        enabled = false,
"        show_root = false,
"        transparent_panel = false,
"    },
"    which_key = false,
"    indent_blankline = {
"        enabled = true,
"        colored_indent_levels = true,
"    },
"    dashboard = true,
"    neogit = false,
"    vim_sneak = false,
"    fern = false,
"    barbar = false,
"    bufferline = true,
"    markdown = true,
"    lightspeed = false,
"    ts_rainbow = false,
"    hop = false,
"    notify = true,
"    telekasten = true,
"    symbols_outline = true,
"}
"}
"EOF
"colorscheme catppuccin

" github-nvim-theme
lua << EOF
require('github-theme').setup({
    transparent = true,
    --theme_style = "dark_default",
    theme_style = "dark",
    --theme_style = "dark_colorblind",
    --theme_style = "light",
    --theme_style = "light_default",
    --theme_style = "light_colorblind",
    --theme_style = "dimmed",
    -- other config
    sidebars = {"qf", "vista_kind", "terminal", "packer"},
    -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    colors = {hint = "orange", error = "#ff0000"},

    -- Overwrite the highlight groups
    overrides = function(c)
    return {
        htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
        DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
        -- this will remove the highlight groups
        TSField = {},
        }
    end
})
EOF

" telescope
lua << EOF
local action_layout = require('telescope.actions.layout')
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
        i = {
            -- map actions.which_key to <C-h> (default: <C-/>)
            -- actions.which_key shows the mappings for your picker,
            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
            ["<C-b>"] = "preview_scrolling_up",
            ["<C-f>"] = "preview_scrolling_down",
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
            ["<Tab>"] = "move_selection_next",
            ["<S-Tab>"] = "move_selection_previous",
            ["<C-q>"] = "close",
            ["<C-p>"] = action_layout.toggle_preview
        },
        n = {
            ["<C-q>"] = "close",
            ["<C-p>"] = action_layout.toggle_preview,
            ["<Tab>"] = "move_selection_next",
            ["<S-Tab>"] = "move_selection_previous",
        }
    },
    layout_strategy = "horizontal",
    sorting_strategy = "ascending",
    layout_config = {
        horizontal = {
            height = 0.5,
            width = 0.8,
            prompt_position = "top",
        },
        -- other layout configuration here
    },
    preview = {
        hide_on_startup = true
    }
    -- other defaults configuration here
  },
  extensions = {
  }
}
EOF
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fm <cmd>Telescope oldfiles<cr>
nnoremap <leader>rg <cmd>Telescope live_grep<cr>
nnoremap <leader>fg <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fo <cmd>Telescope lsp_document_symbols<cr>
nnoremap <leader>fr <cmd>Telescope lsp_references<cr>
nnoremap <leader>fd <cmd>Telescope lsp_definitions<cr>
nnoremap <leader>fi <cmd>Telescope lsp_implementations<cr>
nnoremap <leader>fe <cmd>Telescope diagnostics bufnr=0<cr>
nnoremap <leader>fh <cmd>lua vim.lsp.buf.hover()<cr>

" lsp
" LSPINSTALLER START
lua << EOF
local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(function(server)
    local opts = { 
    }
    -- (optional) Customize the options passed to the server
    -- if server.name == "psalm" then
    --    opts = {
    --    }
    -- end
    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)

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
" LSPINSTALLER end

"git检查更新时间
set updatetime=500
nmap <S-d> :Gvdiffsplit<CR>
nmap <S-m> :G commit -am ""<LEFT>

"airline
let g:airline#extensions#tabline#enabled = 0 
let g:airline#extensions#tabline#formatter = 'unique_tail'
" noremap <leader>3 :<C-U><C-R>=printf("tabprevious")<CR><CR>
" noremap <leader>4 :<C-U><C-R>=printf("tabnext")<CR><CR>

" symbools-outline
map <F12> :SymbolsOutline<CR>

"永远显示状态栏
set laststatus=3
"let g:airline_theme='jellybeans'
"let g:airline_theme='wombat'
"let g:airline_theme='xtermlight'
"let g:airline_theme='molokai'
"let g:airline_theme='base16'
"let g:airline_theme='onedark'
let g:airline_theme='transparent'
"let g:airline_section_z = '%P-%l/%L-%c'
"let g:airline_section_c = '[%n]%f'
let g:airline#extensions#hunks#enabled= 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_skip_empty_sections = 1
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#searchcount#enabled = 1 
let g:airline#extensions#whitespace#enabled = 0 
" 使用 powerline 外观
"let g:airline_powerline_fonts = 1

"目录收藏默认打开
let NERDTreeShowBookmarks=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" nvim-cmp
lua <<EOF
    local cmp = require'cmp'
    -- Global setup.
    cmp.setup({
      snippet = {
        expand = function(args)
          -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
          -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
          -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
      },
      mapping = {
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
        ['<tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
        ['<S-tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-g>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
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
        -- { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'snippy' }, -- For snippy users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        { name = 'path' },
        { name = 'nvim_lsp_signature_help' },
      })
    })
    -- `/` cmdline setup.
    cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
        { name = 'buffer' }
      }    
    })

    -- `:` cmdline setup.
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' },
      })
    })
EOF

" 语法检查
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '!'
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0

"注释的时候自动加个空格, 强迫症必配
"let g:NERDSpaceDelims=1
"左对齐
let g:NERDDefaultAlign = 'left'
"删除注释尾部空格 
let g:NERDTrimTrailingWhitespace = 1

"翻译
let g:translator_default_engines = ['bing','google']
let g:translator_proxy_url = 'socks5://127.0.0.1:1086'

"indentLine
let g:indentLine_char = '¦'
"let g:indentLine_char_list = ['|','¦', '┆', '┊']
"let g:indentLine_leadingSpaceEnabled = 1
"let g:indentLine_leadingSpaceChar = '⋅'
let g:markdown_syntax_conceal=0.8
let g:vim_json_conceal=0
set list lcs=tab:\|\ 

"symbols_outline
lua <<EOF
vim.g.symbols_outline = {
    auto_preview = false,
    keymaps = {
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "G",
        hover_symbol = "K",
        toggle_preview  = "P",
        rename_symbol = "R",
        code_actions = "L",
    }
}
EOF

"treesitter
lua  <<EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {all},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}
EOF

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
noremap <S-q> :windo lcl|ccl<CR>
noremap <leader>cpf :let @+ = expand('%:p')<CR>
noremap <leader>cpw :let @+ = expand('%').expand('::').expand('<cWORD>')<CR>
