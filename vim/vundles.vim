filetype off

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmarik/vundle"


" Ruby, Rails, Rake...
" by default this syntax is used with all *_spec.rb
Bundle "Keithbsmiley/rspec.vim"
Bundle "thoughtbot/vim-rspec"
Bundle "vim-ruby/vim-ruby"

" Javascript...
Bundle "pangloss/vim-javascript"
Bundle "kchmck/vim-coffee-script"
Bundle "othree/javascript-libraries-syntax.vim"
Bundle "vim-scripts/JavaScript-Indent"

" Html, Xml, Css, Markdown...
Bundle "mattn/emmet-vim"
Bundle "helino/vim-json"
Bundle "othree/html5.vim"
Bundle "skammer/vim-css-color"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-repeat"

" Other languages...

" Git related...
Bundle "tpope/vim-fugitive"

" SnipMate...
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" General improvements...
Bundle "editorconfig/editorconfig-vim"
Bundle "godlygeek/tabular"
Bundle "kien/ctrlp.vim"
Bundle "Lokaltog/vim-easymotion"
Bundle "lazywei/YankRing.vim"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/syntastic"
Bundle "tpope/vim-surround"
Bundle "terryma/vim-multiple-cursors"
Bundle "Valloric/MatchTagAlways"
" YCM need extra binaries, see doc.
Bundle "Valloric/YouCompleteMe"
Bundle "vim-scripts/matchit.zip"
Bundle "vim-scripts/netrw.vim"
Bundle "michaeljsmith/vim-indent-object"
Bundle "mileszs/ack.vim"

" Cosmetics, color scheme, Powerline...
Bundle "Valloric/vim-valloric-colorscheme"
Bundle "bling/vim-airline"

" My plugins...
Bundle "lazywei/vim-language-specific"
Bundle "lazywei/vim-doc-tw"
Bundle "lazywei/vim-lazywei-colorscheme"
