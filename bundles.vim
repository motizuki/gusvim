if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')

" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" file tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" commenting
Plug 'scrooloose/nerdcommenter'
" fuzzy file open
Plug 'ctrlpvim/ctrlp.vim'
" yank history
Plug 'vim-scripts/YankRing.vim'
" git integration
Plug 'tpope/vim-fugitive'
" syntax checking async
Plug 'w0rp/ale'
" manipulation of surraunding parens, quotes, etc.
Plug 'tpope/vim-surround'
" vertical alignment tool
Plug 'tsaleh/vim-align'
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
" extended matching for the % operator
Plug 'adelarsq/vim-matchit'
" indent
Plug 'yggdroot/indentLine'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
" repeat motion with <Space>
Plug 'scrooloose/vim-space'
" TS -- Depends
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/vim-js-pretty-template'
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" color themes
Plug 'lifepillar/vim-solarized8'
Plug 'tpope/vim-vividchalk'
Plug 'chrisbra/Colorizer'

" Rails
Plug 'rakr/vim-one'
Plug 'tpope/vim-rails'

call plug#end()

filetype plugin indent on
