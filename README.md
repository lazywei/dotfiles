@lazywei's dotfiles
==========

## Vim

- Use [NeoVim](https://github.com/neovim/neovim)
- Use [vim-plug](https://github.com/junegunn/vim-plug)
- Configurations are heavily inspired by
  - [@junegunn](https://github.com/junegunn/dotfiles/blob/master/vimrc)
  - [@Valloric](https://github.com/Valloric/dotfiles/blob/master/vim/vimrc.vim)
  - [@skwp's YADR](https://github.com/skwp/dotfiles/blob/master/vimrc)
  - [@joedicastro](https://github.com/joedicastro/dotfiles/blob/master/vim/vimrc)

## Shell

- zsh
- prezto

  ```
  .zlogin -> /Users/lazywei/.zprezto/runcoms/zlogin
  .zlogout -> /Users/lazywei/.zprezto/runcoms/zlogout
  .zprezto -> /Users/lazywei/dotfiles/prezto
  .zpreztorc -> /Users/lazywei/.zprezto/runcoms/zpreztorc
  .zprofile -> /Users/lazywei/.zprezto/runcoms/zprofile
  .zshenv -> /Users/lazywei/.zprezto/runcoms/zshenv
  .zshrc -> /Users/lazywei/.zprezto/runcoms/zshrc
  ```

## Global Key Remapping -- Karabiner

####[Karabiner](https://pqrs.org/osx/karabiner/index.html.en)
```
cd ~/Library/Application\ Support/Karabiner
ln -s ~/dotfiles/karabiner/private.xml ./
```
