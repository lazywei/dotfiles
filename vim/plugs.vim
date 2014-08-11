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
Plug 'marijnh/tern_for_vim'

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
Plug 'vim-scripts/freefem.vim'
Plug 'ekalinin/Dockerfile.vim'

" Git related...
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" SnipMate...
" Plug 'garbas/vim-snipmate'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'

" Unite...
" vimproc need manually build
Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/unite-outline'
" Plug 'tsukkee/unite-help'
" Plug 'ujihisa/unite-locate'
" Plug 'thinca/vim-unite-history'
" Plug 'osyo-manga/unite-filetype'
" Plug 'osyo-manga/unite-quickfix'
" Plug 'osyo-manga/unite-fold'
" Plug 'tacroe/unite-mark'
" File explorer (needed where ranger is not available)
" Plug 'Shougo/vimfiler'
" Junk files
" Plug 'Shougo/junkfile.vim'

" Tmux...
Plug 'benmills/vimux'
Plug 'jingweno/vimux-zeus'

" General improvements...
Plug 'editorconfig/editorconfig-vim'
" Plug 'techlivezheng/vim-plugin-minibufexpl'
" Plug 'godlygeek/tabular'
Plug 'justinmk/vim-sneak'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/limelight.vim'
Plug 'lazywei/YankRing.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'mattn/webapi-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-visual-star-search'
Plug 'osyo-manga/vim-over'
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
" YCM need extra binaries, see doc.
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer' }
Plug 'vim-scripts/matchit.zip'
" Find out where maps are defined
" Plug 'vim-scripts/listmaps.vim'
" Plug 'xuhdev/SingleCompile'

" Text objects...
Plug 'bootleq/vim-textobj-rubysymbol'
Plug 'briandoll/change-inside-surroundings.vim'
Plug 'coderifous/textobj-word-column.vim'
Plug 'kana/vim-textobj-user'
Plug 'lucapette/vim-textobj-underscore'
Plug 'michaeljsmith/vim-indent-object'
Plug 'nelstrom/vim-textobj-rubyblock'

" Cosmetics, color scheme, Powerline...
Plug 'bling/vim-airline'
Plug 'jnurmine/Zenburn'
Plug 'junegunn/seoul256.vim'
Plug 'Pychimp/vim-luna'
Plug 'sjl/badwolf'
Plug 'Valloric/vim-valloric-colorscheme'
" Plug 'vim-scripts/TagHighlight'

" My plugins...
Plug 'lazywei/vim-language-specific'
Plug 'lazywei/vim-doc-tw'
Plug 'lazywei/vim-lazywei-colorscheme'

call plug#end()
