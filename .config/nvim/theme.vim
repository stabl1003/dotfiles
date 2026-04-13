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
