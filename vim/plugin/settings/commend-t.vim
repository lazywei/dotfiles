let g:CommandTMaxHeight          = 10
let g:CommandTMatchWindowReverse = 1 " shows results in reverse order

set wildignore+=*.o,*.objt,*.pyc,*.so,blaze*,READONLY,llvm,Library*,CMakeFiles
nnoremap <leader>t :CommandT<cr>
nnoremap <leader>n :CommandTBuffer<cr>
nnoremap <leader>' :CommandTFlush<cr>
