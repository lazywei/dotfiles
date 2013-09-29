filetype off

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'


" Ruby, Rails, Rake...
" by default this syntax is used with all *_spec.rb
Bundle 'Keithbsmiley/rspec.vim'
Bundle 'thoughtbot/vim-rspec'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails.git'
Bundle 'ck3g/vim-change-hash-syntax'

" Javascript...
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/javascript-libraries-syntax.vim'

" Html, Xml, Css, Markdown...
Bundle 'mattn/emmet-vim'
Bundle 'helino/vim-json'
Bundle 'othree/html5.vim'
Bundle 'ap/vim-css-color'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-repeat'

" Other languages...

" Git related...
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'gregsexton/gitv'
Bundle 'mattn/gist-vim'

" SnipMate...
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" General improvements...
Bundle 'editorconfig/editorconfig-vim'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'lazywei/YankRing.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-endwise'
" Read doc for how to use
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Valloric/MatchTagAlways'
" YCM need extra binaries, see doc.
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/netrw.vim'
Bundle 'mileszs/ack.vim'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'xuhdev/SingleCompile'
Bundle 'mattn/webapi-vim'

" Text objects...
Bundle 'briandoll/change-inside-surroundings.vim'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'kana/vim-textobj-user'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'lucapette/vim-textobj-underscore'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'bootleq/vim-textobj-rubysymbol'

" Cosmetics, color scheme, Powerline...
Bundle 'Valloric/vim-valloric-colorscheme'
Bundle 'bling/vim-airline'
Bundle 'vim-scripts/TagHighlight'

" My plugins...
Bundle 'lazywei/vim-language-specific'
Bundle 'lazywei/vim-doc-tw'
Bundle 'lazywei/vim-lazywei-colorscheme'
