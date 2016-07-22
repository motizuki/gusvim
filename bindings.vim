" Don't use Ex mode, use Q for formatting
map Q gq

"make Y consistent with C and D
nnoremap Y y$

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" ,n to get the next location (compilation errors, grep etc)
nmap <leader>n :cn<CR>
nmap <leader>N :cp<CR>

" replicate q,w,e commands to be used in uppercase
command Q q
command Qa qa
command QA qa
command -nargs=* -complete=file W w <args>
command -nargs=* -complete=file E e <args>

" center display after searching
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#z

" keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv

" better navigation of wrapped lines
nnoremap j gj
nnoremap k gk

" easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" remove trailing spaces
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" fast expand current file's directory in command mode
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" ALT jk move line/block
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" ,f for global git serach for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>

" same in visual mode
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

" Format JSON
vnoremap <leader>jf :!python -m json.tool<cr>

" Replace quotes " to '
noremap <leader>qf :%s/"\([^"]*\)"/'\1'/g<cr>

" Update Ruby hash to new one
noremap <leader>hf :%s/:\([^=,'"]*\) =>/\1:/gc<cr>

" toggle paste mode
set pastetoggle=<F2>

