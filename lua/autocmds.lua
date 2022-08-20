vim.cmd([[
" restore cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   execute "normal! g`\"" |
  \ endif

" 2 spaces for selected filetypes
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,nix setlocal shiftwidth=2 tabstop=2

" don't auto commenting new lines
au BufEnter * set fo-=c fo-=r fo-=o
]])

