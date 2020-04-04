set nocompatible
syntax on
filetype plugin indent on
let g:hybrid_custom_term_colors = 1
colorscheme solarized8_dark_high

" uncomment this to use the same clipboard as the cmd+c otherwise content of
" clipboard will be stored in the register *
" set clipboard=unnamed

" let g:solarized_termcolors=256
" set background=light

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set nobinary

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

" improve scrolling
" set ttyscroll=3
set lazyredraw
set nocursorline
set scrolloff=5
set showcmd!             " Show (partial) command in status line.
" set scrolljump=-50     " Jump multiple lines when going up/down a file via j/k

set number
set numberwidth=3       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showmatch           " Show matching brackets.
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status line
set listchars=tab:▷⋅,trail:·
set list
set ttyfast             " fast draw

" behavior ignore these files when completing names and in explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=/bin/bash     " use bash for shell commands
set autowriteall        " Automatically save before commands like :next and :make
set hidden              " enable multiple modified buffers
set history=2000
set backspace=indent,eol,start
let bash_is_sh=1        " syntax shell files as bash scripts
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
set backupskip+=~/tmp/*,/private/tmp/* " skip backups on OSX temp dir, for crontab -e to properly work
set noswapfile          " do not write .swp files
set undofile
set undodir=~/.backup/undo/,~/tmp,.

set nofoldenable        "dont fold by default "

" dictionary
set dictionary=/usr/share/dict/words

let mapleader = ","
let maplocalleader = "\\"

set fdm=manual

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

