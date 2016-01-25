@lazywei's dotfiles
==========

This repo is based on [@holman](https://github.com/holman/dotfiles)'s dotfiles. For the original and complete instruction, please refer to holman's repo.

## install

Run this:

```sh
git clone https://github.com/lazywei/dotfiles.git
cd ~/dotfiles
script/bootstrap
```

This will symlink the appropriate files in `dotfiles` to your home directory.
Everything is configured and tweaked within `~/dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

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
