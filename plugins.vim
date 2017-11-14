" ALE vim8 async linter
let g:ale_linters = {
      \   'typescript': ['tsserver', 'tslint'],
      \   'javascript': ['eslint'],
      \   'html': ['htmlhint'],
      \}
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
let g:airline#extensions#ale#enabled = 1
let g:ale_html_htmlhint_options = '--format=unix -c ~/.htmlhintrc'
let g:ale_completion_enabled = 1

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

" ,ag for Ag silver searcher
nmap <leader>ag :silent Ag<space>

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

let g:ctrlp_map = '<leader>,'
let g:ctrlp_cmd = 'CtrlP'

nmap <leader>. :CtrlPClearCache<cr>:CtrlP<cr>
nmap <leader>l :CtrlPLine<cr>
nmap <leader>b :CtrlPBuff<cr>
nmap <leader>m :CtrlPBufTag<cr>
nmap <leader>M :CtrlPBufTagAll<cr>

let g:ctrlp_clear_cache_on_exit = 1
" ctrlp leaves stale caches behind if there is another vim process running
" which didn't use ctrlp. so we clear all caches on each new vim invocation
cal ctrlp#clra()

let g:ctrlp_max_height = 40

" jump to buffer in the same tab if already open
let g:ctrlp_switch_buffer = 1

" if in git repo - use git file listing command, should be faster
" using this option overrides standard CtrlP ignore list based on vim wildignore
" so use 'grep -v ...' to exclude common image and font files from the search
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files --exclude-standard -cod | grep -viE "\.(png|gif|jpg|gz|woff|eot|tiff|ttf|otf)$"']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(node_modules)$'
  \ }
" open multiple files with <c-z> to mark and <c-o> to open. v - opening in
" vertical splits; j - jump to first open buffer; r - open first in current buffer
let g:ctrlp_open_multiple_files = 'vjr'

let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'mixed', 'line']

" vim-indentobject
" add Markdown to the list of indentation based languages
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

" indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5

" Gundo
let g:gundo_close_on_revert = 1

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='dark' " dark simple badwolf solarized solarized2
" set noshowmode

" Filetypes
autocmd BufRead,BufNewFile *.spec.js set filetype=javascript-jasmine syntax=javascript

" UltiSnips
let g:UltiSnipsExpandTrigger=       "<tab>"
let g:UltiSnipsJumpForwardTrigger=  "<c-b>"
let g:UltiSnipsJumpBackwardTrigger= "<c-z>"
let g:UltiSnipsSnippetsDir=         "~/gusvim/UltiSnips"

" Set Gdiff opt to vertical
set diffopt+=vertical

" Set nostartofline
se nosol

" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" Tmux navigator
let g:tmux_navigator_no_mappings = 1

" vim-tags
let g:vim_tags_use_vim_dispatch = 1

" JS -
" Javascript syntax
let g:used_javascript_libs = 'angularjs, jquery, jasmine, angularuirouter, angularui'
let g:jsx_ext_required = 0

"JSDoc config
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description  = 1

"Adding control-x binding to jsdoc, jumping above the current function declaration
nmap <silent> <C-x> ?function<cr>:noh<cr><Plug>(jsdoc)

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
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Ctags
let g:rails_ctags_arguments = "--languages=ruby . $(bundle list --paths)"
