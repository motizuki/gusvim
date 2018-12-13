" ALE vim8 async linter
let g:ale_linters = {
      \   'typescript': ['tsserver', 'tslint'],
      \   'javascript': ['eslint'],
      \   'html': ['htmlhint'],
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
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

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

" Typescript
let g:tsuquyomi_completion_detail   = 1
let g:tsuquyomi_disable_quickfix    = 1
let g:tsuquyomi_use_dev_node_module = 0

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

" completor
let g:completor_node_binary = "/Users/gus/.nvm/versions/node/v7.4.0/bin/node"
let g:completor_scss_omni_trigger = '([\w-]+|@[\w-]*|[\w-]+:\s*[\w-]*)$'
let g:completor_html_omni_trigger = '(<|<[a-zA-Z][a-zA-Z1-6]*\s+|="|"\s+)$'
let g:completor_auto_close_doc = 0

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

" Prittier
let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 120

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'false'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'always'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

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
