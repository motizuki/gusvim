if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')

" file tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" commenting
Plug 'scrooloose/nerdcommenter'
" yank history
Plug 'vim-scripts/YankRing.vim'
" git integration
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'
" syntax checking async
Plug 'w0rp/ale'
" manipulation of surraunding parens, quotes, etc.
Plug 'tpope/vim-surround'
" vertical alignment tool
Plug 'tsaleh/vim-align'
" end certain structures automatically, e.g. begin/end etc.
Plug 'tpope/vim-endwise'
" visual undo tree
Plug 'sjl/gundo.vim'
" git diff in the gutter (sign column and stages/reverts hunks
Plug 'airblade/vim-gitgutter'
" hi-speed html coding
Plug 'mattn/emmet-vim'
" extended matching for the % operator
Plug 'adelarsq/vim-matchit'
" indent
Plug 'yggdroot/indentLine'
" status bar
Plug 'itchyny/lightline.vim'
" VIM8 !! :) Completion popup and snippets
Plug 'maralla/completor.vim', {'do' : 'make js'}
Plug 'honza/vim-snippets'
" Snipmate
Plug 'SirVer/ultisnips'
" Polyglot
Plug 'sheerun/vim-polyglot'
" JS linter
Plug 'Shutnik/jshint2.vim'
Plug 'ternjs/tern_for_vim', {'do' : 'npm i'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'ianks/vim-tsx'
" Tmux
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-tmux-navigator'
" Mult Cursor
Plug 'terryma/vim-multiple-cursors'
" lightweight Rspec runner for Vim
Plug 'thoughtbot/vim-rspec'
" replacement for the repeat mapping (. to support plugins
Plug 'tpope/vim-repeat'
" hide .gitignore-d files from vim
Plug 'vitaly/vim-gitignore'
" TS -- Depends
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/vim-js-pretty-template'
" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" color themes
Plug 'lifepillar/vim-solarized8'
Plug 'chrisbra/Colorizer'
Plug 'rafi/awesome-vim-colorschemes'

" Rails
Plug 'tpope/vim-rails'

" Tagbar - list all tags
Plug 'majutsushi/tagbar'

" Auto tag
Plug 'craigemery/vim-autotag'

" Dart
Plug 'natebosch/vim-lsc'

" Markdown
Plug 'gabrielelana/vim-markdown'

Plug 'rhysd/committia.vim'
Plug 'rhysd/vim-grammarous'

call plug#end()

filetype plugin indent on
