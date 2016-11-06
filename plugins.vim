" syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_wq=0
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jshint']
let g:syntastic_html_tidy_ignore_errors=["<ion-", "discarding unexpected </ion-", " proprietary attribute \"ng-"]
let g:syntastic_html_tidy_blocklevel_tags = ['ion-header-bar', 'ion-pane', 'ion-content', 'ion-view', 'ion-tabs', 'ion-tab', 'ion-nav-view']
let g:syntastic_haml_checkers = ['haml_lint']

" Gitgutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" Tmux nav works on vim
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
" Nasty workaround to fix garbling window when syntastic is scanning
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>:redraw!<cr>
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

" ,ag for Ag silver searcher
nmap <leader>ag :silent Ag<space>

" nerdcommenter
" ,/ to invert comment on the current line/selection
let NERDSpaceDelims=1
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" ,t to show tags window
let Tlist_Show_Menu=1
nmap <leader>t :TlistToggle<CR>

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

" Switch
" making some of the switches defined for ruby work in HAML files
autocmd FileType haml let b:switch_definitions =
      \ [
      \   g:switch_builtins.ruby_hash_style,
      \   g:switch_builtins.ruby_string,
      \   g:switch_builtins.true_false,
      \   g:switch_builtins.true_false,
      \ ]

" vim-airline
let g:airline_powerline_fonts=1
let g:airline_theme='luna' " dark simple badwolf solarized solarized2
set noshowmode

" Filetypes
autocmd BufRead,BufNewFile *.spec.js set filetype=javascript-jasmine syntax=javascript

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Super Tab
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:SuperTabCrMapping = 0

" Neocomplete - popup
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction


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

"JSDoc config
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1

"Adding control-x binding to jsdoc, jumping above the current function declaration
nmap <silent> <C-x> ?function<cr>:noh<cr><Plug>(jsdoc)

" Rails - ruby
" vim-rspec
map <Leader>r :call RunNearestSpec()<CR>
let g:rspec_command = "VtrSendCommandToRunner rspec {spec}"

"Rubocop
let g:syntastic_ruby_checkers          = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec      = '`which rubocop`'

" Typescript
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_use_dev_node_module = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
