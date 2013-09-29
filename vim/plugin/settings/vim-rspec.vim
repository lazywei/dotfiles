let g:rspec_command = ":Shell zeus rspec {spec}"
noremap <leader>rc :call RunCurrentSpecFile()<CR>
noremap <leader>rn :call RunNearestSpec()<CR>
noremap <leader>ra :call RunAllSpecs()<CR>
