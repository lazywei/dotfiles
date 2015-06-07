" vim: set foldmethod=marker foldlevel=0:

" ============================================================================
" .vimrc of Chih-Wei Chang {{{
" ============================================================================

let s:darwin = has('mac')

let mapleader      = ' '
let maplocalleader = ' '

" We reset the vimrc augroup. Autocommands are added to this group throughout
" the file
augroup vimrc
  autocmd!
augroup END

" let g:python_host_skip_check = 1
" let g:python3_host_skip_check = 1

" }}}
" ============================================================================

" ============================================================================
" VIM-PLUG BLOCK {{{
" ============================================================================

silent! if plug#begin('~/.nvim/plugged')

" if s:darwin
"   let g:plug_url_format = 'git@github.com:%s.git'
" else
"   let $GIT_SSL_NO_VERIFY = 'true'
" endif

" Ruby, Rails, Rake...
" by default this syntax is used with all *_spec.rb
Plug 'ck3g/vim-change-hash-syntax'
Plug 'Keithbsmiley/rspec.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'skalnik/vim-vroom'

" Javascript...
Plug 'justinj/vim-react-snippets'
Plug 'kchmck/vim-coffee-script'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
" Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
" Plug 'vim-scripts/JSON.vim'
" Plug 'jiangmiao/simple-javascript-indenter'
" Plug 'othree/jspc.vim'
" Plug 'bigfish/vim-js-context-coloring'

" Html, Xml, Css, Markdown...
Plug 'helino/vim-json'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'tpope/vim-markdown'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'

" Haskell...
" Plug 'bitc/vim-hdevtools'

" Go...
Plug 'fatih/vim-go'
Plug 'gevans/vim-ginkgo'

" Latex
Plug 'gerw/vim-latex-suite'

" Python
Plug 'ivanov/vim-ipython', { 'for': ['python'] }
Plug 'klen/python-mode', { 'for': ['python'] }

" Other languages...
Plug 'lazywei/vim-matlab'
Plug 'ekalinin/Dockerfile.vim'
Plug 'wting/rust.vim'
Plug 'cespare/vim-toml'
Plug 'lazywei/vim-swig'

" Git related...
Plug 'chrisbra/vim-diff-enhanced'
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
" Plug 'jaxbot/github-issues.vim'

" Code completion
" See: https://github.com/junegunn/vim-plug/wiki/faq#loading-plugins-manually
" Plug 'Valloric/YouCompleteMe', { 'on': [], 'do': './install.sh --clang-completer --gocode-completer' }
Plug 'Shougo/neocomplcache.vim'
" Plug 'SirVer/ultisnips'
Plug 'Shougo/neosnippet.vim'
Plug 'honza/vim-snippets'
" augroup load_us_ycm
"   autocmd!
"   autocmd InsertEnter * call plug#load('ultisnips', 'vim-snippets', 'neocomplcache.vim')
"                      " \| call youcompleteme#Enable() | autocmd! load_us_ycm
" augroup END

" Unite...
" vimproc need manually build
Plug 'Shougo/vimproc.vim', { 'do': 'make -f make_mac.mak' }

" Tmux...
Plug 'benmills/vimux'
Plug 'jingweno/vimux-zeus'

" General improvements...
Plug 'editorconfig/editorconfig-vim', { 'on': 'EditorConfigReload' }
" Plug 'techlivezheng/vim-plugin-minibufexpl'
" Plug 'justinmk/vim-sneak'
Plug 'justinmk/vim-gtfo'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/vim-peekaboo'
Plug 'lazywei/YankRing.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-visual-star-search'
Plug 'osyo-manga/vim-over', { 'on': 'OverCommandLine' }
" Plug 'rking/ag.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'szw/vim-ctrlspace'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-vinegar'
Plug 'eiginn/netrw'
" Plug 'Valloric/MatchTagAlways'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/VisIncr'
" Find out where maps are defined
" Plug 'vim-scripts/listmaps.vim'
" Plug 'xuhdev/SingleCompile'

" Text objects...
Plug 'bootleq/vim-textobj-rubysymbol', { 'for': ['ruby', 'haml'] }
Plug 'briandoll/change-inside-surroundings.vim'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-user'
Plug 'lucapette/vim-textobj-underscore'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['ruby', 'haml'] }

" Cosmetics, color scheme, Powerline...
Plug 'bling/vim-airline'
" Plug 'jnurmine/Zenburn'
Plug 'junegunn/seoul256.vim'
" Plug 'Valloric/vim-valloric-colorscheme'
" Plug 'nanotech/jellybeans.vim'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'gmoe/vim-espresso'


" Tags...
Plug 'szw/vim-tags'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'
Plug 'tomtom/tlib_vim'
" Plug 'xolox/vim-easytags'

" My plugins...
Plug 'lazywei/vim-language-specific'
" Plug 'lazywei/vim-doc-tw'
Plug 'lazywei/vim-sourcegraph'
endif
call plug#end()
" }}}
" ============================================================================

" ============================================================================
" BASIC SETTINGS {{{
" ============================================================================

" In normal mode, we use : much more often than ; so lets swap them.
" WARNING: this will cause any "ordinary" map command without the "nore" prefix
" that uses ":" to fail. For instance, "map <f2> :w" would fail, since vim will
" read ":w" as ";w" because of the below remappings. Use "noremap"s in such
" situations and you'll be fine.
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;


" GENERAL SETTINGS {{{

colorscheme seoul256
" colorscheme espresso

set cursorline                  "Highlights the current line
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax enable

set foldmethod=indent   "fold based on indent
set foldlevelstart=99   "all folds open by default

set nojoinspaces
set laststatus=2        " the statusline is now always shown
set virtualedit=block
set encoding=utf-8

" }}}

" TURN OFF SWAP FILES {{{

" set noswapfile
" set nobackup
" set nowb

" Keep undo history across sessions, by storing in file.
" Only works all the time.
" if has('persistent_undo')
"   silent !mkdir ~/.vim/backups > /dev/null 2>&1
"   set undodir=~/.vim/backups
"   set undofile
" endif

" }}}

" INDENTATION {{{

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\|\ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
" }}}

" COMPLETION {{{

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
" }}}

" SCROLLING {{{

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
" }}}

" SEARCH {{{

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
" }}}

" MISC SETTINGS {{{
" set fileformat=unix     " file mode is unix
" set fileformats=unix,dos,mac   " detects unix, dos, mac file formats in that order


" tries to avoid those annoying "hit enter to continue" messages
" if it still doesn't help with certain commands, add a second <cr>
" at the end of the map command
set shortmess=aIT

set tags=./tags;/

" turns off all error bells, visual or otherwise
set noerrorbells visualbell t_vb=

" none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#

" allow backspace and cursor keys to cross line boundaries
set whichwrap+=<,>,h,l,[,],b,s

" enforces a specified line-length and auto inserts hard line breaks when we
" reach the limit; in Normal mode, you can reformat the current paragraph with
" gqap.
set textwidth=80

" this makes the color after the textwidth column highlighted
set colorcolumn=+1

if v:version >= 704
  " The new Vim regex engine is currently slooooow as hell which makes syntax
  " highlighting slow, which introduces typing latency.
  " Consider removing this in the future when the new regex engine becomes
  " faster.
  set regexpengine=1
endif

set clipboard+=unnamedplus     " Use system clipboard

set lazyredraw

" Keep the cursor on the same column
set nostartofline

" }}}


" }}}
" ============================================================================

" ============================================================================
" MORE INVOVLED SETTINGS {{{
" ============================================================================

" Unicode support (taken from http://vim.wikia.com/wiki/Working_with_Unicode)
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

augroup vimrc
  autocmd FileType text,markdown,gitcommit set nocindent
  " Auto turn on spell check for markdown file, gitcommit
  autocmd FileType markdown setlocal spell! spelllang=en_us
  autocmd FileType gitcommit setlocal spell! spelllang=en_us
augroup END

" Go back to the location last time edited when open files.
if has("autocmd")
  autocmd vimrc BufRead *.txt set tw=78
  autocmd vimrc BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

" }}}
" ============================================================================

" ============================================================================
" CUSTOME SETTINGS {{{
" ============================================================================

for fpath in split(globpath("~/.nvim/settings", '*.vim'), '\n')
  exe 'source' fpath
endfor

" }}}
" ============================================================================

" ============================================================================
" BLOCK SAMPLE {{{
" ============================================================================
" }}}
" ============================================================================
