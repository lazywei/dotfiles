" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind <leader>a to grep shortcut
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <leader>a :AgFZF<SPACE>

command! -nargs=1 AgFZF call fzf#run({
            \'source': Arghandler(<f-args>),
            \'sink' : function('AgHandler'),
            \'options' : '-m'
            \})

function! AgHandler(l)
    let keys = split(a:l,':')
    execute 'tabe +' . keys[-2] . ' ' . escape(keys[-1], ' ')
endfunction 

function! Arghandler(l)
    return "ag -i " . a:l . " | sed 's@\\(.[^:]*\\):\\(.[^:]*\\):\\(.*\\)@\\3:\\2:\\1@' "
endfunction
