filetype off

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'


" Ruby, Rails, Rake...
" by default this syntax is used with all *_spec.rb
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-rails.git'
Plugin 'vim-ruby/vim-ruby'

" Javascript...
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
" Need install via npm, see doc
Plugin 'marijnh/tern_for_vim'

" Html, Xml, Css, Markdown...
Plugin 'helino/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-markdown'

" Haskell...
Plugin 'bitc/vim-hdevtools'

" Go...
" Plugin 'jnwhiteh/vim-golang'
" gocode and godef need extra installation, see github.
" Plugin 'Blackrush/vim-gocode'
" Plugin 'dgryski/vim-godef'
" Plugin 'fsouza/go.vim'
Plugin 'fatih/vim-go'

" Latex
Plugin 'gerw/vim-latex-suite'

" Python
Plugin 'ivanov/vim-ipython'

" Other languages...
Plugin 'lazywei/vim-matlab'
Plugin 'vim-scripts/freefem.vim'

" Git related...
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-fugitive'

" SnipMate...
" Plugin 'garbas/vim-snipmate'
" Bundle 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'

" Unite...
" vimproc need manually build
Plugin 'Shougo/vimproc.vim'
" Plugin 'Shougo/unite.vim'
" Plugin 'Shougo/unite-outline'
" Plugin 'tsukkee/unite-help'
" Plugin 'ujihisa/unite-locate'
" Plugin 'thinca/vim-unite-history'
" Plugin 'osyo-manga/unite-filetype'
" Plugin 'osyo-manga/unite-quickfix'
" Plugin 'osyo-manga/unite-fold'
" Plugin 'tacroe/unite-mark'
" File explorer (needed where ranger is not available)
" Plugin 'Shougo/vimfiler'
" Junk files
" Plugin 'Shougo/junkfile.vim'

" Tmux...
Plugin 'benmills/vimux'
Plugin 'jingweno/vimux-zeus'

" General improvements...
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'techlivezheng/vim-plugin-minibufexpl'
" Plugin 'godlygeek/tabular'
Plugin 'justinmk/vim-sneak'
Plugin 'junegunn/vim-easy-align'
Plugin 'kien/ctrlp.vim'
Plugin 'lazywei/YankRing.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mattn/webapi-vim'
" Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'Rykka/colorv.vim'
Plugin 'rking/ag.vim'
" Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sleuth'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'tpope/vim-vinegar'
Plugin 'Valloric/MatchTagAlways'
" YCM need extra binaries, see doc.
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/matchit.zip'
" Plugin 'vim-scripts/netrw.vim'
Plugin 'vim-scripts/listmaps.vim'
Plugin 'xuhdev/SingleCompile'

" Text objects...
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'briandoll/change-inside-surroundings.vim'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'lucapette/vim-textobj-underscore'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'nelstrom/vim-textobj-rubyblock'

" Cosmetics, color scheme, Powerline...
Plugin 'bling/vim-airline'
Plugin 'Valloric/vim-valloric-colorscheme'
Plugin 'vim-scripts/TagHighlight'
Plugin 'Pychimp/vim-luna'
Plugin 'jnurmine/Zenburn'

" My plugins...
Plugin 'lazywei/vim-language-specific'
Plugin 'lazywei/vim-doc-tw'
Plugin 'lazywei/vim-lazywei-colorscheme'
