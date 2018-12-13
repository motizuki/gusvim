" Override ctag to jump to scss classes
" alternative to <C-]>
" place your cursor on an id or class and hit <leader>]
" to jump to the definition
nnoremap <C-]> :tag /<c-r>=expand('<cword>')<cr><cr>

" alternative to <C-w>}
" place your cursor on an id or class and hit <leader>}
" to show a preview of the definition. This doesn't seem to be
" very useful for CSS but it rocks for JavaScript 
nnoremap <leader>} :ptag /<c-r>=expand('<cword>')<cr><cr>
