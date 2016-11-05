if &compatible
  set nocompatible
endif

set runtimepath^=~/.vim/bundle/repos/github.com/Shougo/dein.vim
call dein#begin('~/.vim/bundle')

call dein#add('Shougo/dein.vim')

call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
" file tree
call dein#add('scrooloose/nerdtree')
" file tree and tabs interaction
call dein#add('jistr/vim-nerdtree-tabs')
" commenting
call dein#add('scrooloose/nerdcommenter')
" fuzzy file open
call dein#add('kien/ctrlp.vim')
" tags list navigation
call dein#add('taglist.vim')
" yank history
call dein#add('YankRing.vim')
" git integration
call dein#add('tpope/vim-fugitive')
" syntax checking on save
call dein#add('scrooloose/syntastic')
" manipulation of surraunding parens, quotes, etc.
call dein#add('tpope/vim-surround')
" vertical alignment tool
call dein#add('tsaleh/vim-align')
" 'ag' searching integration
call dein#add('rking/ag.vim')
" text object based on indent level (ai, ii)
call dein#add('austintaylor/vim-indentobject')
" plugin for visually displaying indent levels
call dein#add('Indent-Guides')
" end certain structures automatically, e.g. begin/end etc.
call dein#add('tpope/vim-endwise')
" visual undo tree
call dein#add('sjl/gundo.vim')
" git diff in the gutter (sign column) and stages/reverts hunks
call dein#add('airblade/vim-gitgutter')
" hi-speed html coding
call dein#add('mattn/emmet-vim')
" indent
call dein#add('nathanaelkane/vim-indent-guides')
" airline
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" Completion popup and snippets
call dein#add('Shougo/neocomplete.vim') " Requires lua brew install macvim --with-cscope --with-lua
call dein#add('honza/vim-snippets')
" Snipmate
call dein#add('SirVer/ultisnips')
call dein#add('ervandew/supertab')

" JS
call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('othree/html5.vim')
call dein#add('Shutnik/jshint2.vim')
call dein#add('heavenshell/vim-jsdoc')
call dein#add('pangloss/vim-javascript')

" Tmux
call dein#add('christoomey/vim-tmux-runner')
call dein#add('christoomey/vim-tmux-navigator')
" Mult Cursor
call dein#add('terryma/vim-multiple-cursors')

" Ruby/Rails
" rails support
call dein#add('tpope/vim-rails')
" lightweight Rspec runner for Vim
call dein#add('thoughtbot/vim-rspec')
" i18n extraction plugin
call dein#add('stefanoverna/vim-i18n')

" color themes
call dein#add('altercation/vim-colors-solarized')
call dein#add('tpope/vim-vividchalk')

" syntax support
call dein#add('vim-ruby/vim-ruby')
call dein#add('tsaleh/vim-tmux')
call dein#add('JSON.vim')
call dein#add('tpope/vim-cucumber')
call dein#add('tpope/vim-haml')
call dein#add('tpope/vim-markdown')
call dein#add('ekalinin/Dockerfile.vim')

" replacement for the repeat mapping (.) to support plugins
call dein#add('tpope/vim-repeat')
" hide .gitignore-d files from vim
call dein#add('vitaly/vim-gitignore')
" repeat motion with <Space>
call dein#add('scrooloose/vim-space')
" Elixir
call dein#add('elixir-lang/vim-elixir')

" Unite
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/unite-outline')
call dein#add('ujihisa/unite-colorscheme')

call dein#add('szw/vim-tags')
call dein#add('tpope/vim-dispatch')

" TS -- Depends on vimproc
call dein#add('Quramy/tsuquyomi')
call dein#add('leafgarland/typescript-vim')

call dein#end()

filetype plugin indent on
