""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map 0 ^

noremap <leader>ss :setlocal spell! spelllang=en_us<cr>
nnoremap <leader>w :w!<cr>

" Fast editing of the .vimrc
noremap <leader>v :tabe! ~/.vimrc<cr>
noremap <silent> <leader>V :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Treat long lines as break lines (useful when moving around in them):
map j gj
map k gk

" Map space to / (search) and c-space to ? (backgwards search)
map <space> /\v

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Indent
nmap <tab> v>
nmap <s-tab> v<

" Use the arrows to something usefull
noremap <right> :bn<cr>
noremap <left> :bp<cr>

" Tab configuration
noremap <leader>tn :tabnew<cr>
noremap <leader>te :tabedit 
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove 

" Keep search matches in the middle of the window.
" zz centers the screen on the cursor, zv unfolds any fold if the cursor
" suddenly appears inside a fold.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

" Close the current buffer
noremap <leader>bd :Bclose<cr>
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif

  if bufnr("%") == l:currentBufNum
    new
  endif

  if buflisted(l:currentBufNum)
    execute("bdelete! ".l:currentBufNum)
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Insert mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" with this, we can now type ",." to exit out of insert mode
" if we really wanted to type ",.", then just type one char, wait half a sec,
" type another
inoremap ,. <Esc>
inoremap ,1 ()<esc>i
inoremap ,2 []<esc>i
inoremap ,3 {}<esc>i
inoremap ,4 {<esc>o}<esc>O
inoremap ,q ''<esc>i
inoremap ,e ""<esc>i
inoremap ,t <><esc>i


" Fast jump to the end of line in insert mode
inoremap <leader>A <esc>A

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap ,1 <esc>`>a)<esc>`<i(<esc>
vnoremap ,2 <esc>`>a]<esc>`<i[<esc>
vnoremap ,3 <esc>`>a}<esc>`<i{<esc>
vnoremap ,4 <esc>`>a"<esc>`<i"<esc>
vnoremap ,q <esc>`>a'<esc>`<i'<esc>

vmap <tab> >gv
vmap <s-tab> <gv

vnoremap <C-r> "hy:%s/<C-r>h//c<left><left>
vnoremap ,. <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
