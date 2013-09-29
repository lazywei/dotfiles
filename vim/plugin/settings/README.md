Key Mapping
===========

`<leader> = ,`

* `<leader>.` = <Esc> in visual and insert mode. In normal mode = `:noh`

### Normal mode

* `<leader>ss` check spell
* `<leader>w` fast save file
* `<leader>v` open `vimrc` and `<leader>V` reload `vimrc`
* `<space>` search
* `<ctrl-j/k/h/l>` move between windows
* `<leader>n/e/m` new tab / edit in tab / tab move
* `<leader>bd` kill buffer

### Insert mode

* `<leader>1` ()
* `<leader>2` []
* `<leader>3` {}
* `<leader>4` { /* with new line */ }
* `<leader>q` ''
* `<leader>e` ""
* `<leader>t` <>
* `<leader>A` fast jump to the end of line

### Visual mode

* `<leader>1` add surround ()
* `<leader>2` add surround []
* `<leader>3` add surround {}
* `<leader>q` add surround ''
* `<leader>e` add surround ""
* `<C-r>` fast search and replace the word current selected

### Custom mapping with more tweak

* `<leader><space>` delete trailing space
* `Q` close window or kill buffer

### Plug-ins

#### NERDTree

* `<leader>d` toggle nerdtree
* `<leader>f` nerdtree find (find the current file in the tree)

#### Ack

* `<leader>a` search files as in command line

#### CtrlP

* `<leader>cp` or `Cmd+p`

#### tabular

* `<leader>a=` align by `=`

#### vim-gitgutter

* `<leader>g` toggle gitgutter (default: no display)

#### SingleCompile

* `<leader>cc` compile current file
* `<leader>cr` compile current file and run it

#### YankRing

* `<leader>yr` YRShow
* `Y` yank from the cursor to the end of the line, which makes more sense

#### vim-rspec

* `<leader>rc` run rspec on current spec
* `<leader>rn` run rspec on current block
* `<leader>ra` run rspec on all test
