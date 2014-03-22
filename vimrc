" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Bert
"             lazywei AT github
" Sections:
"    -> General Settings
"    -> VIM user interface
"    -> More tweaks
"
"    (after vimrc loaded, see :h initialization )
"    -> Custom mappings
"        -> location: vim/plugin/settings/custom-keymap.vim
"    -> Plugins settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" We reset the vimrc augroup.
" Autocommands are added to this group throughout the file
augroup vimrc
  autocmd!
augroup END

let mapleader = ","

" In normal mode, we use : much more often than ; so lets swap them.
" WARNING: this will cause any "ordinary" map command without the "nore" prefix
" that uses ":" to fail. For instance, "map <f2> :w" would fail, since vim will
" read ":w" as ";w" because of the below remappings. Use "noremap"s in such
" situations and you'll be fine.
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Vundle
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" Enable filetype plugin
filetype plugin on
filetype indent on


set autoindent                 " on new lines, match indent of previous line
set autoread                   " auto read when a file is changed from the outside
set backspace=indent,eol,start " Allow backspacing over everything in insert mode
set cindent                    " smart indenting for c-like code
set cino=b1,g0,N-s,t0,(0,W4    " see :h cinoptions-values

" The "longest" option makes completion insert the longest prefix of all
" the possible matches; see :h completeopt
set completeopt=menu,menuone,longest

set copyindent                 " copy the previous indentation on autoindenting
set encoding=utf8
set expandtab
set fileformat=unix            " file mode is unix
set fileformats=unix,dos,mac   " detects unix, dos, mac file formats in that order
set hidden                     " allows making buffers hidden even with unsaved changes
set history=1000               " remember more commands and search history
set hlsearch                   " Highlight search things
set ignorecase                 " case insensitive searching
set laststatus=2               " the statusline is now always shown
set linebreak
set incsearch                  " Make search act like search in modern browsers
set magic                      " change the way backslashes are used in search patterns
set mouse=a                    " enables the mouse in all modes
set nowb
set noshowmode                 " Don't show the mode ("-- INSERT --") at the bottom
set nolazyredraw               " Don't redraw while executing macros
set shiftround                 " makes indenting a multiple of shiftwidth
set smartcase                  " but become case sensitive if you type uppercase characters
set smarttab                   " smart tab handling for indenting
set switchbuf=useopen,usetab
set shiftwidth=2
set tabstop=2
set timeoutlen=500             " Timeout for mapping

" When you type the first tab, it will complete as much as possible, the second
" tab hit will provide a list, the third and subsequent tabs will cycle through
" completion options so you can complete the file without further keys
set wildmode=longest,list,full
set wildmenu                   " completion with menu
set wrap                       " Wrap lines
set whichwrap+=<,>,h,l,[,]

" No sound on errors
" turns off all error bells, visual or otherwise
set noerrorbells visualbell t_vb=
autocmd vimrc GUIEnter * set visualbell t_vb=

func! MySys()
  return "mac"
endfun

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme valloric
syntax enable
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set cmdheight=1     " The commandbar height
set showmatch       " Show matching bracets when text indicator is over them
set mat=2           " How many tenths of a second to blink
set list listchars=tab:\ \ ,trail:·
set nu

if MySys() == "mac"
  set gfn=Menlo:h16
  set shell=/usr/local/bin/zsh
elseif MySys() == "windows"
  set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif MySys() == "linux"
  set gfn=Monaco\ 14
  set shell=/bin/zsh
endif

if has("gui_running")
  set guioptions-=T "remove toolbar
  set guioptions-=r "remove right-hand scroll bar
  set guioptions-=R
  set guioptions-=L "remove left-hand scrollbar which is present when there is a vertically split window
  set guioptions-=l
  set guioptions-=M
  set guioptions-=m "remove menu
  set t_Co=256
  set cursorline " highlight current line
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => More tweaks
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unicode support (taken from http://vim.wikia.com/wiki/Working_with_Unicode)
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

autocmd vimrc FileType text,markdown,gitcommit set nocindent
" Auto turn on spell check for markdown file, gitcommit
autocmd vimrc FileType markdown setlocal spell! spelllang=en_us
autocmd vimrc FileType gitcommit setlocal spell! spelllang=en_us

try
  lang zh_TW
catch
endtry

" Go back to the location last time edited when open files.
if has("autocmd")
  autocmd BufRead *.txt set tw=78
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

" Use system clipboard
set clipboard=unnamed
