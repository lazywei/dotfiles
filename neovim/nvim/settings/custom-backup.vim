" Make a dir if no exists {{{

function! MakeDirIfNoExists(path)
    if !isdirectory(expand(a:path))
        call mkdir(expand(a:path), "p")
    endif
endfunction

" }}}


" Backups {{{

set backup
set noswapfile
set undofile
set undoreload=1000
set undolevels=1000
set backupdir=$HOME/.nvim/tmp/backup/
set undodir=$HOME/.nvim/tmp/undo/
set directory=$HOME/.nvim/tmp/swap/
set viminfo+=n$HOME/.nvim/tmp/viminfo

" make this dirs if no exists previously
silent! call MakeDirIfNoExists(&undodir)
silent! call MakeDirIfNoExists(&backupdir)
silent! call MakeDirIfNoExists(&directory)

" }}}
