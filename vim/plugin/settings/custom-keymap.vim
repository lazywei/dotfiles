""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let maplocalleader= ' '
map 0 ^
noremap ,. :noh<cr>

nnoremap <leader>w :w!<cr>

" Fast editing of the .vimrc
noremap <leader>v :e ~/.vimrc<CR>
noremap <silent> <leader>V :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Treat long lines as break lines (useful when moving around in them):
map j gj
map k gk

" Map space to / (search) and c-space to ? (backgwards search)
map <space> /\v

" Smart way to move btw. windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Indent
nmap <tab> v>
nmap <s-tab> v<

" Use the arrows to something usefull
" noremap <right> :bn<cr>
" noremap <left> :bp<cr>

" Tab configuration
noremap <leader>tn :tabnew<CR>
noremap <leader>te :tabedit<space>
noremap <leader>tm :tabmove<space>
noremap <leader>e :edit<space>

" Keep search matches in the middle of the window.
" zz centers the screen on the cursor, zv unfolds any fold if the cursor
" suddenly appears inside a fold.
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap n nzzzv
nnoremap N Nzzzv

" Spelling {{{
" turn on the spell checking and set the English language
noremap <leader>ss :setlocal spell! spelllang=en_us<cr>
" jump to the next bad spell word
noremap <Leader>sn ]s
" suggest words
noremap <Leader>sp z=
" jump to the next bad spell word and suggests a correct one
noremap <Leader>sc ]sz=
" add word to the dictionary
noremap <Leader>sa zg
" }}}

" Switch between buffers
" noremap <S-h> :bp<CR>
" noremap <S-l> :bn<CR>
noremap <S-h> gT
noremap <S-l> gt

" Close the current buffer

nnoremap <Leader>K <C-w>c
nnoremap <silent><Leader>k :Bclose<CR>
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
vnoremap ,q <esc>`>a'<esc>`<i'<esc>
vnoremap ,e <esc>`>a"<esc>`<i"<esc>

vmap <tab> >gv
vmap <s-tab> <gv

vnoremap <C-r> "hy:%s/<C-r>h//c<left><left>
vnoremap ,. <Esc>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
