" See: ranger.nongnu.org
" Use Ranger as a file explorer {{{

fun! RangerChooser()
    exec "silent !ranger --choosefile=/tmp/chosenfile " . expand("%:p:h")
    if filereadable('/tmp/chosenfile')
        exec 'edit ' . system('cat /tmp/chosenfile')
        call system('rm /tmp/chosenfile')
    endif
    redraw!
endfun
nnoremap <Leader>x :call RangerChooser()<CR>
" }}}


" Vim plugin for using ranger as a file chooser
" File:                ranger.vim
" Maintainer:        Gary Johnson <garyjohn AT spocom DOT com>
" Last Change:        2011-10-31 16:25:58

" From the ranger(1) man page for ranger-1.5.2:
"
"   VIM: File Chooser
"       This is a vim function which allows you to use ranger to select a file
"       for opening in your current vim session.
"
"        fun! RangerChooser()
"          silent !ranger --choosefile=/tmp/chosenfile `[ -z '%' ] && echo -n . || dirname %`
"          if filereadable('/tmp/chosenfile')
"            exec 'edit ' . system('cat /tmp/chosenfile')
"            call system('rm /tmp/chosenfile')
"          endif
"          redraw!
"        endfun
"        map ,r :call RangerChooser()<CR>
"
" That function fails when executed in an empty, unnamed buffer with the
" following messages:
"
"     Error detected while processing function RangerChooser:
"     line    1:
"     E499: Empty file name for '%' or '#', only works with ":p:h":     silent !ranger
"      --choosefile=/tmp/chosenfile `[ -z '%' ] && echo -n . || dirname %`

" RangerChooser()
"
" Ranger version 1.4.2 or later is required to run this function.  That's when
" the --choosefile option was added.

"fun! RangerChooser(...)
"    let tmpfile = tempname()
"    if a:0 > 0 && a:1 != ""
"        let dir = a:1
"    elseif expand("%")
"        let dir = "."
"    else
"        let dir = expand("%:p:h")
"    endif
"    exe 'silent !ranger --choosefile='.tmpfile dir
"    if filereadable(tmpfile)
"        exe 'edit' readfile(tmpfile)[0]
"        call delete(tmpfile)
"    endif
"    redraw!
"endfun
"map ,r :call RangerChooser()<CR>
"command -nargs=? RangerChooser call RangerChooser("<args>")
