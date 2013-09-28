let g:yankring_history_dir = '$HOME/tmp/vim'
nnoremap <leader>yr :YRShow<CR>

" Since vim multiple cursors use ctrl-p ctrl-n, we change to use alt.
let g:yankring_replace_n_pkey = '<m-p>'
let g:yankring_replace_n_nkey = '<m-n>'

" this makes Y yank from the cursor to the end of the line, which makes more
" sense than the default of yanking the whole current line (we can use yy for that)
function! YRRunAfterMaps()
  nnoremap Y :<C-U>YRYankCount 'y$'<CR>
endfunction
