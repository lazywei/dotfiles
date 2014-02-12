" Unite {{{

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.
  nmap <buffer> <ESC> <Plug>(unite_exit)
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
endfunction

" buffers
nnoremap <silent><Leader>b :Unite -silent buffer<CR>
" tabs
nnoremap <silent><Leader>B :Unite -silent tab<CR>
" yankring
nnoremap <silent><Leader>i :Unite -silent register history/yank<CR>
" help
nnoremap <silent> g<C-h> :UniteWithCursorWord -silent help<CR>
" tasks
nnoremap <silent><Leader>; :Unite -silent -toggle
      \ grep:%::FIXME\|TODO\|NOTE\|XXX\|COMBAK\|@todo<CR>
" outlines (also ctags)
nnoremap <silent><Leader>t :Unite -silent -vertical -winwidth=40
      \ -direction=topleft -toggle outline<CR>
" junk files
nnoremap <silent><Leader>j :Unite -silent junkfile/new junkfile<CR>

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

" menus {{{
let g:unite_source_menu_menus = {}

" menu prefix key (for all Unite menus) {{{
nnoremap [menu] <Nop>
nmap <LocalLeader> [menu]
" }}}

" menus menu
nnoremap <silent>[menu]u :Unite -silent -winheight=20 menu<CR>

" files and dirs menu {{{
let g:unite_source_menu_menus.files = {
      \ 'description' : '          files & dirs
      \                                          ⌘ [space]o',
      \}
let g:unite_source_menu_menus.files.command_candidates = [
      \['▷ open file                                                  ⌘ ,o',
      \'Unite -start-insert file'],
      \['▷ open more recently used files                              ⌘ ,m',
      \'Unite file_mru'],
      \['▷ open file with recursive search                            ⌘ ,O',
      \'Unite -start-insert file_rec/async'],
      \['▷ edit new file',
      \'Unite file/new'],
      \['▷ search directory',
      \'Unite directory'],
      \['▷ search recently used directories',
      \'Unite directory_mru'],
      \['▷ search directory with recursive search',
      \'Unite directory_rec/async'],
      \['▷ make new directory',
      \'Unite directory/new'],
      \['▷ change working directory',
      \'Unite -default-action=lcd directory'],
      \['▷ know current working directory',
      \'Unite output:pwd'],
      \['▷ junk files                                                 ⌘ ,d',
      \'Unite junkfile/new junkfile'],
      \['▷ save as root                                               ⌘ :w!!',
      \'exe "write !sudo tee % >/dev/null"'],
      \['▷ quick save                                                 ⌘ ,w',
      \'normal ,w'],
      \['▷ open ranger                                                ⌘ ,x',
      \'call RangerChooser()'],
      \['▷ open vimfiler                                              ⌘ ,X',
      \'VimFiler'],
      \]
nnoremap <silent>[menu]o :Unite -silent -winheight=17 -start-insert
      \ menu:files<CR>
" }}}

" file searching menu {{{
let g:unite_source_menu_menus.grep = {
      \ 'description' : '           search files
      \                                          ⌘ [space]a',
      \}
let g:unite_source_menu_menus.grep.command_candidates = [
      \['▷ grep (ag → ack → grep)                                     ⌘ ,a',
      \'Unite -no-quit grep'],
      \['▷ find',
      \'Unite find'],
      \['▷ locate',
      \'Unite -start-insert locate'],
      \['▷ vimgrep (very slow)',
      \'Unite vimgrep'],
      \]
nnoremap <silent>[menu]a :Unite -silent menu:grep<CR>
" }}}

" buffers, tabs & windows menu {{{
let g:unite_source_menu_menus.navigation = {
      \ 'description' : '     navigate by buffers, tabs & windows
      \                   ⌘ [space]b',
      \}
let g:unite_source_menu_menus.navigation.command_candidates = [
      \['▷ buffers                                                    ⌘ ,b',
      \'Unite buffer'],
      \['▷ tabs                                                       ⌘ ,B',
      \'Unite tab'],
      \['▷ windows',
      \'Unite window'],
      \['▷ location list',
      \'Unite location_list'],
      \['▷ quickfix',
      \'Unite quickfix'],
      \['▷ resize windows                                             ⌘ C-C C-W',
      \'WinResizerStartResize'],
      \['▷ new vertical window                                        ⌘ ,v',
      \'vsplit'],
      \['▷ new horizontal window                                      ⌘ ,h',
      \'split'],
      \['▷ close current window                                       ⌘ ,k',
      \'close'],
      \['▷ toggle quickfix window                                     ⌘ ,q',
      \'normal ,q'],
      \['▷ zoom                                                       ⌘ ,z',
      \'ZoomWinTabToggle'],
      \['▷ delete buffer                                              ⌘ ,K',
      \'bd'],
      \]
nnoremap <silent>[menu]b :Unite -silent menu:navigation<CR>
" }}}

" buffer internal searching menu {{{
let g:unite_source_menu_menus.searching = {
      \ 'description' : '      searchs inside the current buffer
      \                     ⌘ [space]f',
      \}
let g:unite_source_menu_menus.searching.command_candidates = [
      \['▷ search line                                                ⌘ ,f',
      \'Unite -auto-preview -start-insert line'],
      \['▷ search word under the cursor                               ⌘ [space]8',
      \'UniteWithCursorWord -no-split -auto-preview line'],
      \['▷ search outlines & tags (ctags)                             ⌘ ,t',
      \'Unite -vertical -winwidth=40 -direction=topleft -toggle outline'],
      \['▷ search marks',
      \'Unite -auto-preview mark'],
      \['▷ search folds',
      \'Unite -vertical -winwidth=30 -auto-highlight fold'],
      \['▷ search changes',
      \'Unite change'],
      \['▷ search jumps',
      \'Unite jump'],
      \['▷ search undos',
      \'Unite undo'],
      \['▷ search tasks                                               ⌘ ,;',
      \'Unite -toggle grep:%::FIXME|TODO|NOTE|XXX|COMBAK|@todo'],
      \]
nnoremap <silent>[menu]f :Unite -silent menu:searching<CR>
" }}}

" yanks, registers & history menu {{{
let g:unite_source_menu_menus.registers = {
      \ 'description' : '      yanks, registers & history
      \                            ⌘ [space]i',
      \}
let g:unite_source_menu_menus.registers.command_candidates = [
      \['▷ yanks                                                      ⌘ ,i',
      \'Unite history/yank'],
      \['▷ commands       (history)                                   ⌘ q:',
      \'Unite history/command'],
      \['▷ searches       (history)                                   ⌘ q/',
      \'Unite history/search'],
      \['▷ registers',
      \'Unite register'],
      \['▷ messages',
      \'Unite output:messages'],
      \['▷ undo tree      (gundo)                                     ⌘ ,u',
      \'GundoToggle'],
      \]
nnoremap <silent>[menu]i :Unite -silent menu:registers<CR>
" }}}

" spelling menu {{{
let g:unite_source_menu_menus.spelling = {
      \ 'description' : '       spell checking
      \                                        ⌘ [space]s',
      \}
let g:unite_source_menu_menus.spelling.command_candidates = [
      \['▷ spell checking in Spanish                                  ⌘ ,ss',
      \'setlocal spell spelllang=es'],
      \['▷ spell checking in English                                  ⌘ ,se',
      \'setlocal spell spelllang=en'],
      \['▷ turn off spell checking                                    ⌘ ,so',
      \'setlocal nospell'],
      \['▷ jumps to next bad spell word and show suggestions          ⌘ ,sc',
      \'normal ,sc'],
      \['▷ jumps to next bad spell word                               ⌘ ,sn',
      \'normal ,sn'],
      \['▷ suggestions                                                ⌘ ,sp',
      \'normal ,sp'],
      \['▷ add word to dictionary                                     ⌘ ,sa',
      \'normal ,sa'],
      \]
nnoremap <silent>[menu]s :Unite -silent menu:spelling<CR>
" }}}

" text edition menu {{{
let g:unite_source_menu_menus.text = {
      \ 'description' : '           text edition
      \                                          ⌘ [space]e',
      \}
let g:unite_source_menu_menus.text.command_candidates = [
      \['▷ toggle search results highlight                            ⌘ ,eq',
      \'set invhlsearch'],
      \['▷ toggle line numbers                                        ⌘ ,l',
      \'call ToggleRelativeAbsoluteNumber()'],
      \['▷ toggle wrapping                                            ⌘ ,ew',
      \'call ToggleWrap()'],
      \['▷ show hidden chars                                          ⌘ ,eh',
      \'set list!'],
      \['▷ toggle fold                                                ⌘ /',
      \'normal za'],
      \['▷ open all folds                                             ⌘ zR',
      \'normal zR'],
      \['▷ close all folds                                            ⌘ zM',
      \'normal zM'],
      \['▷ copy to the clipboard                                      ⌘ ,y',
      \'normal ,y'],
      \['▷ paste from the clipboard                                   ⌘ ,p',
      \'normal ,p'],
      \['▷ toggle paste mode                                          ⌘ ,P',
      \'normal ,P'],
      \['▷ remove trailing whitespaces                                ⌘ ,et',
      \'normal ,et'],
      \['▷ text statistics                                            ⌘ ,es',
      \'Unite output:normal\ ,es -no-cursor-line'],
      \['▷ show word frequency                                        ⌘ ,ef',
      \'Unite output:WordFrequency'],
      \['▷ show available digraphs',
      \'digraphs'],
      \['▷ insert lorem ipsum text',
      \'exe "Loremipsum" input("numero de palabras: ")'],
      \['▷ show current char info                                     ⌘ ga',
      \'normal ga'],
      \]
nnoremap <silent>[menu]e :Unite -silent -winheight=20 menu:text <CR>
" }}}

" neobundle menu {{{
let g:unite_source_menu_menus.neobundle = {
      \ 'description' : '      plugins administration with neobundle
      \                 ⌘ [space]n',
      \}
let g:unite_source_menu_menus.neobundle.command_candidates = [
      \['▷ neobundle',
      \'Unite neobundle'],
      \['▷ neobundle log',
      \'Unite neobundle/log'],
      \['▷ neobundle lazy',
      \'Unite neobundle/lazy'],
      \['▷ neobundle update',
      \'Unite neobundle/update'],
      \['▷ neobundle search',
      \'Unite neobundle/search'],
      \['▷ neobundle install',
      \'Unite neobundle/install'],
      \['▷ neobundle check',
      \'Unite -no-empty output:NeoBundleCheck'],
      \['▷ neobundle docs',
      \'Unite output:NeoBundleDocs'],
      \['▷ neobundle clean',
      \'NeoBundleClean'],
      \['▷ neobundle list',
      \'Unite output:NeoBundleList'],
      \['▷ neobundle direct edit',
      \'NeoBundleDirectEdit'],
      \]
nnoremap <silent>[menu]n :Unite -silent -start-insert menu:neobundle<CR>
" }}}

" git menu {{{
let g:unite_source_menu_menus.git = {
      \ 'description' : '            admin git repositories
      \                                ⌘ [space]g',
      \}
let g:unite_source_menu_menus.git.command_candidates = [
      \['▷ tig                                                        ⌘ ,gt',
      \'normal ,gt'],
      \['▷ git viewer             (gitv)                              ⌘ ,gv',
      \'normal ,gv'],
      \['▷ git viewer - buffer    (gitv)                              ⌘ ,gV',
      \'normal ,gV'],
      \['▷ git status             (fugitive)                          ⌘ ,gs',
      \'Gstatus'],
      \['▷ git diff               (fugitive)                          ⌘ ,gd',
      \'Gdiff'],
      \['▷ git commit             (fugitive)                          ⌘ ,gc',
      \'Gcommit'],
      \['▷ git log                (fugitive)                          ⌘ ,gl',
      \'exe "silent Glog | Unite -no-quit quickfix"'],
      \['▷ git log - all          (fugitive)                          ⌘ ,gL',
      \'exe "silent Glog -all | Unite -no-quit quickfix"'],
      \['▷ git blame              (fugitive)                          ⌘ ,gb',
      \'Gblame'],
      \['▷ git add/stage          (fugitive)                          ⌘ ,gw',
      \'Gwrite'],
      \['▷ git checkout           (fugitive)                          ⌘ ,go',
      \'Gread'],
      \['▷ git rm                 (fugitive)                          ⌘ ,gR',
      \'Gremove'],
      \['▷ git mv                 (fugitive)                          ⌘ ,gm',
      \'exe "Gmove " input("destino: ")'],
      \['▷ git push               (fugitive, buffer output)           ⌘ ,gp',
      \'Git! push'],
      \['▷ git pull               (fugitive, buffer output)           ⌘ ,gP',
      \'Git! pull'],
      \['▷ git command            (fugitive, buffer output)           ⌘ ,gi',
      \'exe "Git! " input("comando git: ")'],
      \['▷ git edit               (fugitive)                          ⌘ ,gE',
      \'exe "command Gedit " input(":Gedit ")'],
      \['▷ git grep               (fugitive)                          ⌘ ,gg',
      \'exe "silent Ggrep -i ".input("Pattern: ") | Unite -no-quit quickfix'],
      \['▷ git grep - messages    (fugitive)                          ⌘ ,ggm',
      \'exe "silent Glog --grep=".input("Pattern: ")." | Unite -no-quit quickfix"'],
      \['▷ git grep - text        (fugitive)                          ⌘ ,ggt',
      \'exe "silent Glog -S".input("Pattern: ")." | Unite -no-quit quickfix"'],
      \['▷ git init                                                   ⌘ ,gn',
      \'Unite output:echo\ system("git\ init")'],
      \['▷ git cd                 (fugitive)',
      \'Gcd'],
      \['▷ git lcd                (fugitive)',
      \'Glcd'],
      \['▷ git browse             (fugitive)                          ⌘ ,gB',
      \'Gbrowse'],
      \['▷ github dashboard       (github-dashboard)                  ⌘ ,gD',
      \'exe "GHD! " input("Username: ")'],
      \['▷ github activity        (github-dashboard)                  ⌘ ,gA',
      \'exe "GHA! " input("Username or repository: ")'],
      \['▷ github issues & PR                                         ⌘ ,gS',
      \'normal ,gS'],
      \]
nnoremap <silent>[menu]g :Unite -silent -winheight=29 -start-insert menu:git<CR>
" }}}
" code menu {{{
let g:unite_source_menu_menus.code = {
      \ 'description' : '           code tools
      \                                            ⌘ [space]p',
      \}
let g:unite_source_menu_menus.code.command_candidates = [
      \['▷ command prompt to run in a tmux panel      (vimux)         ⌘ ,tmp',
      \'VimuxPromptCommand'],
      \['▷ repeat last command                        (vimux)         ⌘ ,tml',
      \'VimuxRunLastCommand'],
      \['▷ stop command execution in tmux panel       (vimux)         ⌘ ,tms',
      \'VimuxInterruptRunner'],
      \['▷ inspect tmux panel                         (vimux)         ⌘ ,tmi',
      \'VimuxInspectRunner'],
      \['▷ close tmux panel                           (vimux)         ⌘ ,tmc',
      \'VimuxCloseRunner'],
      \['▷ zeus console                               (vimux-zeus)    ⌘ ,zc',
      \'ZeusConsole'],
      \['▷ zeus rake                                  (vimux-zeus)    ⌘ ,zr',
      \'normal ,zr'],
      \['▷ zeus generate                              (vimux-zeus)    ⌘ ,zg',
      \'normal ,zg'],
      \['▷ syntastic toggle                           (syntastic)',
      \'SyntasticToggleMode'],
      \['▷ syntastic check & errors                   (syntastic)     ⌘ ,N',
      \'normal ,N'],
      \['▷ list virtualenvs                           (virtualenv)',
      \'Unite output:VirtualEnvList'],
      \['▷ activate virtualenv                        (virtualenv)',
      \'VirtualEnvActivate'],
      \['▷ deactivate virtualenv                      (virtualenv)',
      \'VirtualEnvDeactivate'],
      \['▷ count lines of code',
      \'Unite -default-action= output:call\\ LinesOfCode()'],
      \['▷ toggle indent lines                                        ⌘ ,L',
      \'IndentLinesToggle'],
      \]
nnoremap <silent>[menu]p :Unite -silent -winheight=17 menu:code<CR>
" }}}

" markdown menu {{{
let g:unite_source_menu_menus.markdown = {
      \ 'description' : '       preview markdown extra docs
      \                           ⌘ [space]k',
      \}
let g:unite_source_menu_menus.markdown.command_candidates = [
      \['▷ preview',
      \'Me'],
      \['▷ refresh',
      \'Mer'],
      \]
nnoremap <silent>[menu]k :Unite -silent menu:markdown<CR>
" }}}

" bookmarks menu {{{
let g:unite_source_menu_menus.bookmarks = {
      \ 'description' : '      bookmarks
      \                                             ⌘ [space]m',
      \}
let g:unite_source_menu_menus.bookmarks.command_candidates = [
      \['▷ open bookmarks',
      \'Unite bookmark:*'],
      \['▷ add bookmark',
      \'UniteBookmarkAdd'],
      \]
nnoremap <silent>[menu]m :Unite -silent menu:bookmarks<CR>
" }}}

" colorv menu {{{
function! GetColorFormat()
  let formats = {'r' : 'RGB',
        \'n' : 'NAME',
        \'s' : 'HEX',
        \'ar': 'RGBA',
        \'pr': 'RGBP',
        \'pa': 'RGBAP',
        \'m' : 'CMYK',
        \'l' : 'HSL',
        \'la' : 'HSLA',
        \'h' : 'HSV',
        \}
  let formats_menu = ["\n"]
  for [k, v] in items(formats)
    call add(formats_menu, "  ".k."\t".v."\n")
  endfor
  let fsel = get(formats, input('Choose a format: '.join(formats_menu).'? '))
  return fsel
endfunction

function! GetColorMethod()
  let methods = {
        \'h' : 'Hue',
        \'s' : 'Saturation',
        \'v' : 'Value',
        \'m' : 'Monochromatic',
        \'a' : 'Analogous',
        \'3' : 'Triadic',
        \'4' : 'Tetradic',
        \'n' : 'Neutral',
        \'c' : 'Clash',
        \'q' : 'Square',
        \'5' : 'Five-Tone',
        \'6' : 'Six-Tone',
        \'2' : 'Complementary',
        \'p' : 'Split-Complementary',
        \'l' : 'Luma',
        \'g' : 'Turn-To',
        \}
  let methods_menu = ["\n"]
  for [k, v] in items(methods)
    call add(methods_menu, "  ".k."\t".v."\n")
  endfor
  let msel = get(methods, input('Choose a method: '.join(methods_menu).'? '))
  return msel
endfunction

let g:unite_source_menu_menus.colorv = {
      \ 'description' : '         color management
      \                                      ⌘ [space]c',
      \}
let g:unite_source_menu_menus.colorv.command_candidates = [
      \['▷ open colorv                                                ⌘ ,cv',
      \'ColorV'],
      \['▷ open colorv with the color under the cursor                ⌘ ,cw',
      \'ColorVView'],
      \['▷ preview colors                                             ⌘ ,cpp',
      \'ColorVPreview'],
      \['▷ color picker                                               ⌘ ,cd',
      \'ColorVPicker'],
      \['▷ edit the color under the cursor                            ⌘ ,ce',
      \'ColorVEdit'],
      \['▷ edit the color under the cursor (and all the concurrences) ⌘ ,cE',
      \'ColorVEditAll'],
      \['▷ insert a color                                             ⌘ ,cii',
      \'exe "ColorVInsert " .GetColorFormat()'],
      \['▷ color list relative to the current                         ⌘ ,cgh',
      \'exe "ColorVList " .GetColorMethod() "
      \ ".input("number of colors? (optional): ")
      \ " ".input("number of steps?  (optional): ")'],
      \['▷ show colors list (Web W3C colors)                          ⌘ ,cn',
      \'ColorVName'],
      \['▷ choose color scheme (ColourLovers, Kuler)                  ⌘ ,css',
      \'ColorVScheme'],
      \['▷ show favorite color schemes                                ⌘ ,csf',
      \'ColorVSchemeFav'],
      \['▷ new color scheme                                           ⌘ ,csn',
      \'ColorVSchemeNew'],
      \['▷ create hue gradation between two colors',
      \'exe "ColorVTurn2 " " ".input("Color 1 (hex): ")
      \" ".input("Color 2 (hex): ")'],
      \]
nnoremap <silent>[menu]c :Unite -silent menu:colorv<CR>
" }}}

" vim menu {{{
let g:unite_source_menu_menus.vim = {
      \ 'description' : '            vim
      \                                                   ⌘ [space]v',
      \}
let g:unite_source_menu_menus.vim.command_candidates = [
      \['▷ choose colorscheme',
      \'Unite colorscheme -auto-preview'],
      \['▷ mappings',
      \'Unite mapping -start-insert'],
      \['▷ edit configuration file (vimrc)',
      \'edit $MYVIMRC'],
      \['▷ choose filetype',
      \'Unite -start-insert filetype'],
      \['▷ vim help',
      \'Unite -start-insert help'],
      \['▷ vim commands',
      \'Unite -start-insert command'],
      \['▷ vim functions',
      \'Unite -start-insert function'],
      \['▷ vim runtimepath',
      \'Unite -start-insert runtimepath'],
      \['▷ vim command output',
      \'Unite output'],
      \['▷ unite sources',
      \'Unite source'],
      \['▷ kill process',
      \'Unite -default-action=sigkill -start-insert process'],
      \['▷ launch executable (dmenu like)',
      \'Unite -start-insert launcher'],
      \]
nnoremap <silent>[menu]v :Unite menu:vim -silent -start-insert<CR>
" }}}
" }}}

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
      \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/'], '\|'))

let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 0
let g:unite_enable_short_source_mes = 0
let g:unite_force_overwrite_statusline = 0
let g:unite_prompt = '>>> '
let g:unite_marked_icon = '✓'
" let g:unite_candidate_icon = '∘'
let g:unite_winheight = 15
let g:unite_update_time = 200
let g:unite_split_rule = 'botright'
let g:unite_data_directory = $HOME.'/.vim/tmp/unite'
let g:unite_source_buffer_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_file_mru_time_format = '(%d-%m-%Y %H:%M:%S) '
let g:unite_source_directory_mru_time_format = '(%d-%m-%Y %H:%M:%S) '

if executable('ag')
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup -a -S'
  let g:unite_source_grep_recursive_opt=''
  let g:unite_source_grep_search_word_highlight = 1
elseif executable('ack')
  let g:unite_source_grep_command='ack'
  let g:unite_source_grep_default_opts='--no-group --no-color'
  let g:unite_source_grep_recursive_opt=''
  let g:unite_source_grep_search_word_highlight = 1
endif

let g:junkfile#directory=expand($HOME."/.vim/tmp/junk")

" }}}
