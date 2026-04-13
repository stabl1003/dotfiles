" Auto format on save (optional)
autocmd BufWritePre *.js,*.ts,*.lua,*.py call CocAction('format')

set updatetime=300
set shortmess+=c

" Highlight yank
augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup END
