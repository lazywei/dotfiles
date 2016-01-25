if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif

" ----------------------------------------------------------------------------
" Open files
" ----------------------------------------------------------------------------
function! BuffersLines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

command! FZFMru call fzf#run({
      \'source': v:oldfiles,
      \'sink' : 'e ',
      \'options' : '-m',
      \ 'tmux_height': '60%'
      \})

nnoremap <leader>m :FZFMru<CR>
nnoremap <leader>o :FZF -m<CR>

" ----------------------------------------------------------------------------
" Choose color scheme
" ----------------------------------------------------------------------------
nnoremap <silent> <Leader>C :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':     'colo',
\   'options':  '+m',
\   'left':     30,
\   'launcher': 'iterm2-launcher 20 30 %s'
\ })<CR>

" ----------------------------------------------------------------------------
" Select buffer
" ----------------------------------------------------------------------------
function! s:buflist()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! s:bufopen(e)
  execute 'buffer' matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':  reverse(<sid>buflist()),
\   'sink':    function('<sid>bufopen'),
\   'options': '+m --prompt="Buf> "',
\   'down':    len(<sid>buflist()) + 2
\ })<CR>

" ----------------------------------------------------------------------------
" Tmux complete
" ----------------------------------------------------------------------------
function! s:fzf_insert(data)
  execute 'normal!' (empty(s:fzf_query) ? 'a' : 'ciW')."\<C-R>=a:data\<CR>"
  startinsert!
endfunction

function! s:tmux_words(query)
  let s:fzf_query = a:query
  let matches = fzf#run({
  \ 'source':  'tmuxwords.rb --all-but-current --scroll 500 --min 5',
  \ 'sink':    function('s:fzf_insert'),
  \ 'options': '--no-multi --query="'.escape(a:query, '"').'"',
  \ 'down':    '40%'
  \ })
endfunction

inoremap <silent> <C-X><C-T> <C-o>:call <SID>tmux_words(expand('<cWORD>'))<CR>

" ----------------------------------------------------------------------------
" Dictionary word completion
" ----------------------------------------------------------------------------
function! s:fzf_words(query)
  let s:fzf_query = a:query
  let matches = fzf#run({
  \ 'source':  'cat /usr/share/dict/words',
  \ 'sink':    function('s:fzf_insert'),
  \ 'options': '--no-multi --query="'.escape(a:query, '"').'"',
  \ 'down':    '40%'
  \ })
endfunction

inoremap <silent> <C-X><C-W> <C-o>:call <SID>fzf_words(expand('<cWORD>'))<CR>

" ----------------------------------------------------------------------------
" Buffer search
" ----------------------------------------------------------------------------
function! s:line_handler(l)
  let keys = split(a:l, ':\t')
  exec 'buf ' . keys[0]
  exec keys[1]
  normal! ^zz
endfunction

function! s:buffer_lines()
  let res = []
  for b in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call extend(res, map(getbufline(b,0,"$"), 'b . ":\t" . (v:key + 1) . ":\t" . v:val '))
  endfor
  return res
endfunction

command! FZFLines call fzf#run({
\   'source':  <sid>buffer_lines(),
\   'sink':    function('<sid>line_handler'),
\   'options': '--extended --nth=3..',
\   'down':    '60%'
\})

" ----------------------------------------------------------------------------
" Locate
" ----------------------------------------------------------------------------
command! -nargs=1 Locate call fzf#run(
      \ {'source': 'locate <q-args>', 'sink': 'e', 'options': '-m'})

command! FZFTag if !empty(tagfiles()) | call fzf#run({
\   'source': "sed '/^\\!/d;s/\t.*//' " . join(tagfiles()) . ' | uniq',
\   'sink':   'tag',
\ }) | else | echo 'No tags' | endif

" }}}
