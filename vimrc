"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: LazyWei
"             jrweizhang AT gmail DOT com

" Sections:
"    -> Set Vundle (plugins manager)
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Command mode related
"    -> Moving around, tabs and buffers
"    -> Statusline
"    -> Parenthesis/bracket expanding
"    -> General Abbrevs
"    -> Editing mappings
"
"    -> Plugins settings
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Reset vimrc augroup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" We reset the vimrc augroup. Autocommands are added to this group throughout
" the file
augroup vimrc
    autocmd!
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set Vundle (plugins manager)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set for Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'airblade/vim-gitgutter'
Bundle 'bootleq/vim-tabline'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree.git'
Bundle 'sjl/gundo.vim.git'
Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'tpope/vim-rails.git'
Bundle 'vim-scripts/YankRing.vim.git'
Bundle 'vim-scripts/simplefold'
Bundle 'vim-scripts/EasyGrep'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Valloric/MatchTagAlways'
Bundle 'Valloric/vim-valloric-colorscheme'
" YCM need extra binaries, see doc.
Bundle 'Valloric/YouCompleteMe' 
" ---
Bundle 'vim-scripts/ruby-matchit'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'xuhdev/SingleCompile'
Bundle 'xolox/vim-notes'
" my plugin
Bundle 'lazywei/vim-language-specific'
Bundle 'lazywei/vim-doc-tw'
Bundle 'MarcWeber/ultisnips'
" Bundle 'SirVer/ultisnips'
" Need for vgod's color when use vim in terminal
Bundle 'color'
" less use
Bundle 'majutsushi/tagbar.git'
Bundle 'bufexplorer.zip'
" Bundle 'scrooloose/syntastic'
" Bundle 'php.vim-for-php5'
" Bundle 'vim-latex-1.8.23'
" Bundle 'Shougo/neocomplcache'
" Bundle 'ervandew/supertab.git'
" For snipmate
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
"Bundle 'garbas/vim-snipmate'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" With a map leader it's possible to do extra key combinations
" like <leader>ww saves the current file
let mapleader = ","
let g:mapleader = ","

" In normal mode, we use : much more often than ; so lets swap them.
" WARNING: this will cause any "ordinary" map command without the "nore" prefix
" that uses ":" to fail. For instance, "map <f2> :w" would fail, since vim will
" read ":w" as ";w" because of the below remappings. Use "noremap"s in such
" situations and you'll be fine.
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Set md to markdwon
au BufRead,BufNewFile *.md set filetype=text

" Toggle and untoggle spell checking
noremap <leader>ss :setlocal spell! spelllang=en_us<cr>

" Auto turn on spell check for markdown file, gitcommit
autocmd vimrc FileType markdown setlocal spell! spelllang=en_us
au vimrc FileType gitcommit setlocal spell! spelllang=en_us

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nnoremap <leader>ww :w!<cr>

" Fast jump to the end of line in insert mode
inoremap <leader>A <esc>A


" Fast editing of the .vimrc
noremap <leader>rc :tabe! ~/.vimrc<cr>
noremap <silent> <leader>V :source $MYVIMRC<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Yank to System clipboard
map <S-c> "+y

" Map esc to cancel search highlight
nnoremap <esc> :noh<return><esc>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

func! MySys()
    return "mac"
endfun

" Auto go to the location last time edit when open files.
" 自動回到最後離開時的編輯位置
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal g'\"" |
                \ endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu 啟動具有提示的指令列自動完成

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hid "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,] 

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
" turns off all error bells, visual or otherwise
set noerrorbells visualbell t_vb=
autocmd vimrc GUIEnter * set visualbell t_vb=
set tm=500

" Add line numbers
set nu " relative line numbers => set rnu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system
if MySys() == "mac"
    set gfn=Menlo:h16
    set shell=/bin/zsh
elseif MySys() == "windows"
    set gfn=Bitstream\ Vera\ Sans\ Mono:h10
elseif MySys() == "linux"
    set gfn=Monaco\ 14
    set shell=/bin/zsh
endif

colorscheme valloric
if has("gui_running")
    set guioptions-=T "remove toolbar
    set guioptions-=r "remove right-hand scroll bar
    set guioptions-=L "remove left-hand scrollbar which is present when there is a vertically split window
    set guioptions-=m "remove menu
    set guioptions-=e "for tabline
    "不管 normal , visual , select mode 都要用 輸入文字 的游標
    set mouseshape+=n:beam,v:beam,s:beam,i:beam 
    set t_Co=256
    set background=light
    colorscheme valloric
    set cursorline " highlight current line
    highlight CursorLine 	guibg=#003853 ctermbg=24  gui=none cterm=none
else
    colorscheme vgod
endif

set encoding=utf8
try
    lang zh_TW
catch
endtry

set ffs=unix,dos,mac "Default file types


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" Persistent undo
try
    if MySys() == "windows"
        set undodir=C:\Windows\Temp
    else
        set undodir=~/.vim/undodir
    endif

    set undofile
catch
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set autoindent          " on new lines, match indent of previous line
set copyindent          " copy the previous indentation on autoindenting

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

set guitablabel=%t "set tab name

" set indent for ruby
autocmd FileType ruby,eruby,yaml set tabstop=2 shiftwidth=2 softtabstop=2

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
noremap <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno ,h tabe ~/
cno ,d tabe ~/Desktop/
cno ,j tabe ./
cno ,c tabe <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
cno ,q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>


func! Cwd()
    let cwd = getcwd()
    return "e " . cwd 
endfunc

func! DeleteTillSlash()
    let g:cmd = getcmdline()
    if MySys() == "linux" || MySys() == "mac"
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
    else
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
    endif
    if g:cmd == g:cmd_edited
        if MySys() == "linux" || MySys() == "mac"
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
        else
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
        endif
    endif
    return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
    return a:cmd . " " . expand("%:p:h") . "/"
endfunc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them):
map j gj
map k gk
" Map space to / (search) and c-space to ? (backgwards search)
map <space> /\v
map <c-space> ?
noremap <silent> <leader><cr> :noh<cr>

" Smart way to move btw. windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l
map `j <C-W>j
map `h <C-W>h
map `k <C-W>k
map `l <C-W>l

" Close the current buffer
noremap <leader>bd :Bclose<cr>

" Close all the buffers
noremap <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
noremap <right> :bn<cr>
noremap <left> :bp<cr>

" Tab configuration
noremap <leader>tn :tabnew<cr>
noremap <leader>te :tabedit 
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove 

" When pressing <leader>cd switch to the directory of the open buffer
noremap <leader>cd :cd %:p:h<cr>

" 切換 tab
nnoremap <S-H> :tabp<ENTER>
nnoremap <S-L> :tabn<ENTER>

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

" Specify the behavior when switching between buffers 
try
    set switchbuf=usetab
    set stal=2
catch
endtry


""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap ,1 <esc>`>a)<esc>`<i(<esc>
vnoremap ,2 <esc>`>a]<esc>`<i[<esc>
vnoremap ,3 <esc>`>a}<esc>`<i{<esc>
vnoremap ,4 <esc>`>a"<esc>`<i"<esc>
vnoremap ,q <esc>`>a'<esc>`<i'<esc>

" Map auto complete of (, ", ', [
inoremap ,1 ()<esc>i
inoremap ,2 []<esc>i
inoremap ,3 {}<esc>i
inoremap ,4 {<esc>o}<esc>O
inoremap ,q ''<esc>i
inoremap ,e ""<esc>i
inoremap ,t <><esc>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM gf
map gf <C-w>gf

"Remap VIM 0
map 0 ^

"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nnoremap <M-j> mz:m+<cr>`z
nnoremap <M-k> mz:m-2<cr>`z
vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if MySys() == "mac"
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Hot key to switch between Big5 and UTF-8
noremap <M-u> :set fileencoding=utf-8<CR>
noremap <M-b> :set fileencoding=big5<CR>

" 縮排
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-indent-guides plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 7

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => bufExplorer plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
noremap <leader>o :BufExplorer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERD_tree plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This makes the dir of the current file the root of the nerdtree;
" in effect, it re-centers the nerdtree on the current file's folder.
noremap <F2> :NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F9> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YankRing plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yankring_history_dir = '$HOME/tmp/vim'
"let g:yankring_clipboard_monitor = 1
nnoremap <silent> <F11> :YRShow<CR>
nnoremap <silent> <C-F11> :YRSearch 

" this makes Y yank from the cursor to the end of the line, which makes more
" sense than the default of yanking the whole current line (we can use yy for that)
function! YRRunAfterMaps()
    nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-notes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:notes_directory = '~/notes'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabular plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" looks at the current line and the lines above and below it and aligns all the
" equals signs; useful for when we have several lines of declarations
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplcache plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_disable_auto_complete = 1
" let g:SuperTabDefaultCompletionType = "<C-X><C-U>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SigleCompile plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F3> :SCCompile<cr>
nnoremap <F4> :SCCompileRun<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F5> :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use <D-j> instead of <tab> as trigger key since I use <tab> for YCM
let g:UltiSnips = {}
let g:UltiSnips.InterfaceFlavour = "SnipMate"
let g:UltiSnipsExpandTrigger       = "<D-j>"
let g:UltiSnips.JumpForwardTrigger = "<D-j>"
" Now its time to tell UltiSnips about which snippets to load.
" You do so for snipmate snippets and UltiSnips snippets individually.
" This example illustrates a setup loading snipmate snippets.

" See plugin/UltiSnips.vim, it has much additional documentation.
" Assuming you're not overrding default implemenation the default
" VimL function SnippetFilesForCurrentExpansionDefaultImplementation


" == UltiSnips snippets ==
" Because I want to use the snippet snippets 'default' does not load
" filetype.snippets snippet files. 'all' reperesents the snippets like box
" which are meant to be present always. (snipmate was using _ for this)
" For cpp, already all snippets have been converted to UltiSnips, so use
" those - but only the one provided by my ~/.vim direcotry.
let g:UltiSnips.UltiSnips_ft_filter = {
            \ 'default' : {'filetypes': ['all'] },
            \ 'all' : {'filetypes': ['all'] },
            \ 'cpp' : {'filetypes': ['cpp'], 'dir-regex': '[._]vim/UltiSnips$' },
            \ }
" you may want to replace ['all'] by ['all','FILETYPE'] in order to load
" all snippets - If you load all snipmate-snippets and UltiSnips snippets
" you may also want to set always_use_first_snippet configuration option to 1 like this:
let g:UltiSnips.always_use_first_snippet = 1

" == snipmate snippets ==
" For any other filetype do what I used in the past: snipmate-snippets
" repo (must be added to runtimepath)
" _ represents snipmate snippets which are present always
let g:UltiSnips.snipmate_ft_filter = {
            \ 'default' : {'filetypes': ["FILETYPE", "_"] },
            \ 'html'    : {'filetypes': ["html", "javascript", "_"] },
            \ 'cpp'    : {'filetypes': [] },
            \ }

" Please mind that 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <D-p> :CtrlP<cr>
nnoremap <D-d> :CtrlP 
