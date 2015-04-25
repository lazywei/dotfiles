let g:signify_vcs_list = [ 'git' ]
let g:signify_disable_by_default = 1
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nnoremap <leader>gt SignifyToggle
nnoremap <leader>gh SignifyToggleHighlight
