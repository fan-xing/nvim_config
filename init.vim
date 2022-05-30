"leader键
let mapleader = " "
"行号
set nu
"相对行号
set relativenumber

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

"鼠标
set mouse+=a

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

set termguicolors

" 禁止折行
"set nowrap
" 折叠
" set foldmethod=marker

"语法高亮
syntax  on
set redrawtime=10000

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
Plugin 'buoto/gotests-vim'
Plugin 'preservim/tagbar'

Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'airblade/vim-gitgutter'

Plugin 'nvim-lualine/lualine.nvim'
Plugin 'romgrk/barbar.nvim'
Plugin 'kyazdani42/nvim-web-devicons'

Plugin 'ryanoasis/vim-devicons'

Plugin 'Chiel92/vim-autoformat'

Plugin 'Yggdroot/indentLine'

Plugin 'scrooloose/nerdcommenter'

"彩虹括号
Plugin 'p00f/nvim-ts-rainbow'

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
Plugin 'kyoz/purify', { 'rtp': 'vim' }
Plugin 'dracula/vim', { 'name': 'dracula' }

"平滑移动
Plugin 'psliwka/vim-smoothie'

call vundle#end()            " 这是必需的
filetype plugin indent on    " 这是必需的

"todo

"主题也搞一下吧
set t_Co=256
" colorscheme dracula

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
lua << EOF
local catppuccin = require("catppuccin")
-- configure it
catppuccin.setup{
transparent_background = true,
term_colors = false,
styles = {
   comments = "italic",
   functions = "italic",
   keywords = "italic",
   strings = "italic",
   variables = "italic",
},
integrations = {
   treesitter = true,
   native_lsp = {
       enabled = true,
       virtual_text = {
           errors = "italic",
           hints = "italic",
           warnings = "italic",
           information = "italic",
       },
       underlines = {
           errors = "underline",
           hints = "underline",
           warnings = "underline",
           information = "underline",
       },
   },
   lsp_trouble = false,
   cmp = true,
   lsp_saga = false,
   gitgutter = true,
   gitsigns = true,
   telescope = true,
   nvimtree = {
       enabled = true,
       show_root = true,
       transparent_panel = false,
   },
   neotree = {
       enabled = false,
       show_root = false,
       transparent_panel = false,
   },
   which_key = false,
   indent_blankline = {
       enabled = true,
       colored_indent_levels = true,
   },
   dashboard = true,
   neogit = false,
   vim_sneak = false,
   fern = false,
   barbar = false,
   bufferline = true,
   markdown = true,
   lightspeed = false,
   ts_rainbow = true,
   hop = false,
   notify = true,
   telekasten = true,
   symbols_outline = false,
}
}
EOF
colorscheme catppuccin

" github-nvim-theme
"lua << EOF
"require('github-theme').setup({
"    transparent = true,
"    --theme_style = "dark_default",
"    theme_style = "dark",
"    --theme_style = "dark_colorblind",
"    --theme_style = "light",
"    --theme_style = "light_default",
"    --theme_style = "light_colorblind",
"    --theme_style = "dimmed",
"    -- other config
"    sidebars = {"qf", "vista_kind", "terminal", "packer"},
"    -- Change the "hint" color to the "orange" color, and make the "error" color bright red
"    colors = {hint = "orange", error = "#ff0000"},

"    -- Overwrite the highlight groups
"    overrides = function(c)
"    return {
"        htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
"        DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
"        -- this will remove the highlight groups
"        TSField = {},
"        }
"    end
"})
"EOF

"tagbar
map <F12> :Tagbar<CR>

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
require("nvim-lsp-installer").setup {}
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.settings({
ui = {
    icons = {
        server_installed = "✓",
        server_pending = "➜",
        server_uninstalled = "✗"
        }
    }
})

local servers = { 'bashls', 'clangd', 'bashls', 'gopls', 'html', 'intelephense', 'vimls'}
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end


EOF
" LSPINSTALLER end

"git检查更新时间
set updatetime=500
nmap <S-d> :Gvdiffsplit<CR>

"永远显示状态栏
set laststatus=3
lua << EOF
-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = "NONE" } },
      inactive = { c = { fg = colors.fg, bg = "NONE" } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  -- mode component
  function()
    return ''
  end,
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.red,
      i = colors.green,
      v = colors.blue,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
  padding = { right = 1 },
}

ins_left {
  -- filesize component
  'filesize',
  cond = conditions.buffer_not_empty,
}

ins_left { 'location' }

-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
  path  = 1,
}

ins_left {
  -- Lsp server name .
  function()
    local msg = 'No Active Lsp'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}

ins_left {
  function()
    return '%='
  end,
}

-- Add components to right sections
ins_right {
  'o:encoding', -- option component same as &encoding in viml
  fmt = string.upper, -- I'm not sure why it's upper case either ;)
  cond = conditions.hide_in_width,
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'fileformat',
  fmt = string.upper,
  icons_enabled = false, -- I think icons are cool but Eviline doesn't have them. sigh
  color = { fg = colors.green, gui = 'bold' },
}

ins_right {
  'branch',
  icon = '',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

-- Now don't forget to initialize lualine
lualine.setup(config)
EOF
" barbar 
" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})
let bufferline.add_in_buffer_number_order = v:true
" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:true
lua << EOF
EOF

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

"注释的时候自动加个空格
let g:NERDSpaceDelims=1
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
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
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
noremap <expr> <C-k> empty(filter(getwininfo(), 'v:val.loclist')) ? ':cp<CR>' : ':lprev<CR>'
noremap <expr> <C-j> empty(filter(getwininfo(), 'v:val.loclist')) ? ':cn<CR>' : ':lnext<CR>'
noremap <expr> <S-q> empty(filter(getwininfo(), 'v:val.loclist')) ? ':cclose<CR>' : ':lclose<CR>'
noremap <leader>cpf :let @+ = expand('%:p')<CR>
noremap <leader>cpw :let @+ = expand('%').expand('::').expand('<cWORD>')<CR>
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
