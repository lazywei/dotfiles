Brief Note
==========

- `zshrc.symlink` will be linked to `~/.zshrc`, and it is responsible for the
  configuration of our dotfiles loading structure (topic oriented). Also, it
  will load the `zimrc`, where we will write the main configuration of the
  modules and other settings.
- `fpath.zsh` adds all the topic folders into FPATH, which allowed us to define
  zsh functions in topic folders and autoload them.
