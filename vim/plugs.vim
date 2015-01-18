call plug#begin('~/.vim/plugged')

" Ruby, Rails, Rake...
" by default this syntax is used with all *_spec.rb
Plug 'ck3g/vim-change-hash-syntax'
Plug 'Keithbsmiley/rspec.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" Javascript...
Plug 'kchmck/vim-coffee-script'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'pangloss/vim-javascript'
" Need install via npm, see doc
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }

Plug 'mxw/vim-jsx'

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

" Latex
Plug 'gerw/vim-latex-suite'

" Python
Plug 'ivanov/vim-ipython'
Plug 'klen/python-mode'

" Other languages...
Plug 'lazywei/vim-matlab'
Plug 'ekalinin/Dockerfile.vim'
Plug 'wting/rust.vim'
Plug 'cespare/vim-toml'

" Git related...
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" Code completion
" See: https://github.com/junegunn/vim-plug/wiki/faq#loading-plugins-manually
Plug 'Valloric/YouCompleteMe', { 'on': [], 'do': './install.sh --clang-completer' }
Plug 'SirVer/ultisnips', { 'on': [] }
Plug 'honza/vim-snippets', { 'on': [] }
augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'vim-snippets', 'YouCompleteMe')
                     \| call youcompleteme#Enable() | autocmd! load_us_ycm
augroup END

" Unite...
" vimproc need manually build
Plug 'Shougo/vimproc.vim'

" Tmux...
Plug 'benmills/vimux'
Plug 'jingweno/vimux-zeus'

" General improvements...
Plug 'editorconfig/editorconfig-vim'
" Plug 'techlivezheng/vim-plugin-minibufexpl'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'lazywei/YankRing.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'mattn/webapi-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-visual-star-search'
Plug 'osyo-manga/vim-over', { 'on':  'OverCommandLine' }
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-vinegar'
Plug 'Valloric/MatchTagAlways'
Plug 'vim-scripts/matchit.zip'
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


" Tags...
Plug 'szw/vim-tags'
Plug 'majutsushi/tagbar'
Plug 'rizzatti/dash.vim'
Plug 'xolox/vim-misc'
Plug 'tomtom/tlib_vim'
" Plug 'xolox/vim-easytags'

" My plugins...
Plug 'lazywei/vim-language-specific'
Plug 'lazywei/vim-doc-tw'
Plug 'lazywei/vim-sourcegraph'

call plug#end()
