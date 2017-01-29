if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')

Plug 'Shougo/dein.vim'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" file tree
Plug 'scrooloose/nerdtree'
" commenting
Plug 'scrooloose/nerdcommenter'
" fuzzy file open
Plug 'kien/ctrlp.vim'
" yank history
Plug 'YankRing.vim'
" git integration
Plug 'tpope/vim-fugitive'
" syntax checking on save
Plug 'scrooloose/syntastic'
" manipulation of surraunding parens, quotes, etc.
Plug 'tpope/vim-surround'
" vertical alignment tool
Plug 'tsaleh/vim-align'
" 'ag' searching integration
Plug 'rking/ag.vim'
" text object based on indent level (ai, ii)
Plug 'austintaylor/vim-indentobject'
" end certain structures automatically, e.g. begin/end etc.
Plug 'tpope/vim-endwise'
" visual undo tree
Plug 'sjl/gundo.vim'
" git diff in the gutter (sign column and stages/reverts hunks
Plug 'airblade/vim-gitgutter'
" hi-speed html coding
Plug 'mattn/emmet-vim'
" indent
Plug 'nathanaelkane/vim-indent-guides'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Completion popup and snippets
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'honza/vim-snippets'
" Snipmate
Plug 'SirVer/ultisnips'

" JS
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/html5.vim'
Plug 'Shutnik/jshint2.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'pangloss/vim-javascript'

" Tmux
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-tmux-navigator'
" Mult Cursor
Plug 'terryma/vim-multiple-cursors'

" Ruby/Rails
" rails support
Plug 'tpope/vim-rails'
" lightweight Rspec runner for Vim
Plug 'thoughtbot/vim-rspec'
" i18n extraction plugin
Plug 'stefanoverna/vim-i18n'

" color themes
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-vividchalk'
Plug 'chrisbra/Colorizer'


" syntax support
Plug 'vim-ruby/vim-ruby'
Plug 'tsaleh/vim-tmux'
Plug 'JSON.vim'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'ekalinin/Dockerfile.vim'

" replacement for the repeat mapping (. to support plugins
Plug 'tpope/vim-repeat'
" hide .gitignore-d files from vim
Plug 'vitaly/vim-gitignore'
" repeat motion with <Space>
Plug 'scrooloose/vim-space'
" Elixir
Plug 'elixir-lang/vim-elixir'

Plug 'szw/vim-tags'

" TS -- Depends on vimproc
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on
