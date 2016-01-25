@lazywei's dotfiles
==========

This repo is based on [@holman](https://github.com/holman/dotfiles)'s dotfiles. For the original and complete instruction, please refer to holman's repo.

## Install

1. Check this README if anything needed to be installed manually.
2. Run the script
    
  ```sh
  git clone https://github.com/lazywei/dotfiles.git
  cd ~/dotfiles
  script/bootstrap
  ```

#### What `script/bootstrap` does

1. Setup gitconfig if not exist.
2. Create symlink for dot files.
3. Run `bin/dot`. 

#### What `bin/dot` does

1. Install Homebrew if not exist.
2. Update Homebrew formulas.
3. Run `script/install`
4. Backup Karabiner's profile.

This script is expected to be executed occasionally from time to time to keep the environment fresh and up-to-date.

#### What `script/install` does

1. Run `brew bundle` to install Homebrew formulas.
2. Run all `install.sh` for each topic.

## Components

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

## Spacemacs

1. Emacs and Spacemacs (`.emacs.d`) will be installed through `script/bootstrap`.
2. Use develop branch for spacemacs
    
  ```sh
  cd ~/.emacs.d
  git checkout -b develop origin/develop
  emacs # this will install packages automatically
  ```



## Shell

1. Zsh and Zim will be installed through `script/bootstrap` -> `bin/dot` -> `script/install`.
2. Configure `zim/zimrc.symlink` and `zsh/zshrc.symlink` (if possible, add configuration to the former one).


## Karabiner [Manually Install Required]

Global Key Remapping.

1. Install the app manually: [Karabiner](https://pqrs.org/osx/karabiner/index.html.en).

## Vim

- Use [NeoVim](https://github.com/neovim/neovim)
- Use [vim-plug](https://github.com/junegunn/vim-plug)
- Configurations are heavily inspired by
  - [@junegunn](https://github.com/junegunn/dotfiles/blob/master/vimrc)
  - [@Valloric](https://github.com/Valloric/dotfiles/blob/master/vim/vimrc.vim)
  - [@skwp's YADR](https://github.com/skwp/dotfiles/blob/master/vimrc)
  - [@joedicastro](https://github.com/joedicastro/dotfiles/blob/master/vim/vimrc)


==========

## Code Style

1. Use ">> ..." prefix for echoing message every topic's `install.sh`.
