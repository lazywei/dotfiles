" which disables all runtime snippets
let g:neosnippet#disable_runtime_snippets = {
      \   '_' : 1,
      \ }

" Plugin key-mappings.
" imap <C-j>     <Plug>(neosnippet_expand_or_jump)
" smap <C-j>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-j>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.nvim/plugged/vim-snippets/snippets'
