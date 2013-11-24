filetype off

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'


" Ruby, Rails, Rake...
" by default this syntax is used with all *_spec.rb
Bundle 'ck3g/vim-change-hash-syntax'
Bundle 'Keithbsmiley/rspec.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-rails.git'
Bundle 'vim-ruby/vim-ruby'

" Javascript...
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'pangloss/vim-javascript'

" Html, Xml, Css, Markdown...
Bundle 'ap/vim-css-color'
Bundle 'helino/vim-json'
Bundle 'mattn/emmet-vim'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'

" Haskell...
Bundle 'bitc/vim-hdevtools'

" Go...
Bundle 'jnwhiteh/vim-golang'
" gocode and godef need extra installation, see github.
Bundle 'Blackrush/vim-gocode'
Bundle 'dgryski/vim-godef'
"Bundle 'fsouza/go.vim'

" Latex
Bundle 'gerw/vim-latex-suite'

" Other languages...
Bundle 'lazywei/vim-matlab'

" Git related...
Bundle 'airblade/vim-gitgutter'
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'
Bundle 'tpope/vim-fugitive'

" SnipMate...
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

" Unite...
" vimproc need manually build
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/unite-outline'
Bundle 'tsukkee/unite-help'
Bundle 'ujihisa/unite-locate'
Bundle 'thinca/vim-unite-history'
Bundle 'osyo-manga/unite-filetype'
Bundle 'osyo-manga/unite-quickfix'
Bundle 'osyo-manga/unite-fold'
Bundle 'tacroe/unite-mark'
" File explorer (needed where ranger is not available)
Bundle 'Shougo/vimfiler'
" Junk files
Bundle 'Shougo/junkfile.vim'

" Tmux...
Bundle 'benmills/vimux'
Bundle 'jingweno/vimux-zeus'

" General improvements...
Bundle 'editorconfig/editorconfig-vim'
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'godlygeek/tabular'
Bundle 'justinmk/vim-sneak'
Bundle 'kien/ctrlp.vim'
Bundle 'lazywei/YankRing.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'mattn/webapi-vim'
Bundle 'mileszs/ack.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'Valloric/MatchTagAlways'
" YCM need extra binaries, see doc.
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/netrw.vim'
Bundle 'xuhdev/SingleCompile'

" Text objects...
Bundle 'bootleq/vim-textobj-rubysymbol'
Bundle 'briandoll/change-inside-surroundings.vim'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'lucapette/vim-textobj-underscore'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'nelstrom/vim-textobj-rubyblock'

" Cosmetics, color scheme, Powerline...
Bundle 'bling/vim-airline'
Bundle 'Valloric/vim-valloric-colorscheme'
Bundle 'vim-scripts/TagHighlight'

" My plugins...
Bundle 'lazywei/vim-language-specific'
Bundle 'lazywei/vim-doc-tw'
Bundle 'lazywei/vim-lazywei-colorscheme'
