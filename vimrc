" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Bert
"             lazywei AT github
" Sections:
"    -> General Settings
"    -> Load plugins via Vundle
"    -> VIM user interface
"    -> Custom mappings
"        -> Inser mode
"        -> Nomal mode
"        -> Visual mode
"        -> Command mode
"
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load plugins via Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Needed for vundle, will be turned on after vundle inits
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     => Inser mode
"     => Nomal mode
"     => Visual mode
"     => Command mode


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
