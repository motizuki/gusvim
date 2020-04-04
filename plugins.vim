" ALE vim8 async linter
let g:ale_linters = {
      \   'typescript': ['tsserver', 'tslint'],
      \   'javascript': ['eslint'],
      \   'dart': ['language_server'],
      \   'html': ['htmlhint'],
      \}
let g:ale_fixers = {
      \   'dart': ['dartfmt'],
      \}
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:ale_html_htmlhint_options = '--format=unix -c ~/.htmlhintrc'
let g:ale_completion_enabled = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_lint_on_filetype_changed = 0

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Gitgutter
let g:gitgutter_max_signs = 200  " default value
highlight GitGutterAdd    guifg=#009900 ctermfg=2 ctermbg=green
highlight GitGutterChange guifg=#bbbb00 ctermfg=3 ctermbg=yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=1 ctermbg=red

" Gitlab gbrowse
let g:fugitive_gitlab_domains = ['https://gitlab.digitalnz.org/']

" Tmux nav works on vim
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-/> :TmuxNavigatePrevious<cr>

" Vim tmux runner
nnoremap <leader>rr :VtrSendCommandToRunner<cr>
noremap <leader>rl :VtrSendLinesToRunner<cr>
nnoremap <leader>rc :VtrClearRunner<cr>
nnoremap <leader>rf :VtrFlushCommand<cr>
nnoremap <leader>rz :VtrFocusRunner<cr>
nnoremap <leader>rn :VtrOpenRunner<cr>
nnoremap <leader>rk :VtrKillRunner<cr>
nnoremap <leader>ra :VtrAttachToPane<cr>

" nerdtree
" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeToggle<CR>

" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" Gundo
nmap <leader>u :GundoToggle<CR>
let g:gundo_prefer_python3 = 1

" nerdcommenter
" ,/ to invert comment on the current line/selection
let NERDSpaceDelims=1
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" yankring
let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'
" ,y to show the yankring
nmap <leader>y :YRShow<cr>
" put the yankring_history file in ~/.backup
let g:yankring_history_dir = '~/.backup'

nmap <leader>, :GFiles<cr>
nmap <leader>b :Buffer<cr>

" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

" Gundo
let g:gundo_close_on_revert = 1

" UltiSnips
let g:UltiSnipsSnippetsDir=         "~/gusvim/UltiSnips"

" Set Gdiff opt to vertical
set diffopt+=vertical

" Set nostartofline
se nosol

" Tmux navigator
let g:tmux_navigator_no_mappings = 1

" Rails - ruby
let ruby_no_expensive = 1

" vim-rspec
map <Leader>r :call RunNearestSpec()<CR>
let g:rspec_command = "VtrSendCommandToRunner bundle exec rspec {spec}"

" FZF
" To use ripgrep instead of ag:
command! -bang -nargs=* Find
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Configure FZF to find ctags
" https://github.com/junegunn/fzf/wiki/Examples-(vim)#jump-to-tags
function! s:tags_sink(line)
  let parts = split(a:line, '\t\zs')
  let excmd = matchstr(parts[2:], '^.*\ze;"\t')
  execute 'silent e' parts[1][:-2]
  let [magic, &magic] = [&magic, 0]
  execute excmd
  let &magic = magic
endfunction
function! s:tags()
  if empty(tagfiles())
    echohl WarningMsg
    echom 'Preparing tags'
    echohl None
    call system('ctags -R --exclude=.git --exclude=node_modules --html-kinds=-ij')
  endif

  call fzf#run({
  \ 'source':  'cat '.join(map(tagfiles(), 'fnamemodify(v:val, ":S")')).
  \            '| grep -v -a ^!',
  \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
  \ 'down':    '40%',
  \ 'sink':    function('s:tags_sink')})
endfunction
command! Tags call s:tags()
nnoremap <C-t> :Tags<CR>
nmap <C-t> :Tags<CR>

" Ctags
let g:rails_ctags_arguments = "--languages=ruby . $(bundle list --paths)"

" Tagbar
nnoremap <leader>tb :Tagbar<cr>
let g:tagbar_type_typescript = {
  \ 'ctagstype': 'typescript',
  \ 'kinds': [
    \ 'c:classes',
    \ 'n:modules',
    \ 'f:functions',
    \ 'v:variables',
    \ 'v:varlambdas',
    \ 'm:members',
    \ 'i:interfaces',
    \ 'e:enums',
  \ ]
\ }

" lsc
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_reference_highlights = v:false
let g:lsc_enable_daignostics = v:false
let g:lsc_reference_highlights = v:false
let g:lsc_enable_incremental_sync = v:false
let g:lsc_enable_autocomplete = v:false
let g:lsc_auto_map = {
    \ 'GoToDefinition': '<C-]>',
    \ 'Completion': 'omnifunc',
    \}

" Polyglot
let g:polyglot_disabled = ['markdown']

" https://github.com/iamcco/markdown-preview.nvim
let g:mkdp_command_for_global = 1
let g:mkdp_auto_close = 0

" COC
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Allow tab to jump between snippets placeholders
let g:coc_snippet_next = '<tab>'

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
