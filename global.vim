" be 'modern'
set nocompatible
syntax on
filetype plugin indent on
colorscheme solarized8_dark_high

" uncomment this to use the same clipboard as the cmd+c otherwise content of
" clipboard will be stored in the register *
" set clipboard=unnamed

" let g:solarized_termcolors=256
" set background=light

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

" utf-8/unicode support
" requires Vim to be compiled with Multibyte support, you can check that by
" running `vim --version` and checking for +multi_byte.
if has('multi_byte')
  scriptencoding utf-8
  set encoding=utf-8
end

" presentation settings
" slowdown ruby files :(
set regexpengine=1
set relativenumber      " precede each line with its line number
set cursorline

set number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set listchars=tab:▷⋅,trail:·
set list
set ttyfast             " fast draw

" highlight spell errors
hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

" behavior
" ignore these files when completing names and in
" explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=/bin/bash     " use bash for shell commands
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " enable multiple modified buffers
set history=5000
set autoread            " automatically read file that has been changed on disk and doesn't have changes in vim
set backspace=indent,eol,start
set guioptions-=T       " disable toolbar"
let bash_is_sh=1        " syntax shell files as bash scripts
set cinoptions=:0,(s,u0,U1,g0,t0 " some indentation options ':h cinoptions' for details
set modelines=5         " number of lines to check for vim: directives at the start/end of file
set autoindent          " automatically indent new line

set ts=2                " number of spaces in a tab
set sw=2                " number of spaces for indent
set et                  " expand tabs into spaces

set ttimeoutlen=50      " fast Esc to normal mode

" mouse settings
if has("mouse")
  set mouse=a
endif
set mousehide                           " Hide mouse pointer on insert mode."

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" directory settings
call system('mkdir -vp ~/.backup/undo/ > /dev/null 2>&1')
set backupdir=~/.backup,.       " list of directories for the backup file
set directory=~/.backup,~/tmp,. " list of directory names for the swap file
set nobackup            " do not write backup files
set backupskip+=~/tmp/*,/private/tmp/* " skip backups on OSX temp dir, for crontab -e to properly work
set noswapfile          " do not write .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.

" folding
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set nofoldenable        "dont fold by default "

" dictionary
set dictionary=/usr/share/dict/words

let mapleader = ","
let maplocalleader = "\\"

set fdm=manual
