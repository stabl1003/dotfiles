set number
set relativenumber
set cursorline
set signcolumn=yes
set termguicolors
set nowrap
set clipboard=unnamedplus

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

set ignorecase
set smartcase
set incsearch
set nohlsearch

set splitbelow
set splitright

set clipboard=unnamedplus
set noswapfile
set undofile

syntax on
filetype plugin indent on

let mapleader=" "

call plug#begin('~/.local/share/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'

call plug#end()

lua << EOF
require('lualine').setup()
EOF
set termguicolors
set background=dark

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = 0
let g:gruvbox_sign_column = 'bg0'
let g:gruvbox_italic = 0

colorscheme gruvbox

hi Normal guibg=#000000 ctermbg=0
hi SignColumn guibg=#000000 ctermbg=0
hi LineNr guifg=#444444 guibg=#000000
hi CursorLineNr guifg=#ffaa00 guibg=#000000

" Comments
hi Comment guifg=#555555 gui=italic

" Strings
hi String guifg=#ff5f5f

" Keywords
hi Keyword guifg=#ffaf00
hi Statement guifg=#ffaf00

" Types
hi Type guifg=#5fd7af
hi Identifier guifg=#5fd7af

" Functions
hi Function guifg=#ffd75f


nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Telescope
nnoremap ff :Telescope find_files<CR>
nnoremap fg :Telescope live_grep<CR>
nnoremap fb :Telescope buffers<CR>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <S-TAB>
      \ coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Confirm completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" LSP-like mappings
nmap <silent> de <Plug>(coc-definition)
nmap <silent> td <Plug>(coc-type-definition)
nmap <silent> im <Plug>(coc-implementation)
nmap <silent> re <Plug>(coc-references)

nmap <silent> K :call CocActionAsync('doHover')<CR>
nmap <leader> rn <Plug>(coc-rename)
nmap <leader> ca <Plug>(coc-codeaction)

" Diagnostics
nmap <silent> dp <Plug>(coc-diagnostic-prev)
nmap <silent> dn <Plug>(coc-diagnostic-next)

" Auto format on save (optional)
autocmd BufWritePre *.js,*.ts,*.lua,*.py call CocAction('format')

set updatetime=300
set shortmess+=c

" Highlight yank
augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup END
