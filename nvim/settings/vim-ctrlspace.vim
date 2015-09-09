" hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
" hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
" hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
" hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE
hi link CtrlSpaceNormal   PMenu
hi link CtrlSpaceSelected PMenuSel
hi link CtrlSpaceSearch   Search
hi link CtrlSpaceStatus   StatusLine

" let g:ctrlspace_use_tabline = 1
" let g:ctrlspace_default_mapping_key = "<leader>cp"

" Sets the minimal height of the plugin window.
" let g:CtrlSpaceHeight = 1

let g:CtrlSpaceSetDefaultMapping = 1
let g:CtrlSpaceDefaultMappingKey = "<leader>cp"
