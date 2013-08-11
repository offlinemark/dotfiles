# dotfiles

A bunch of files that basically configure things to how I like them. Many thanks to [@holman](https://github.com/holman)
for creating the [original setup](https://github.com/holman/dotfiles), from which this repository was forked from.
Since I don't use zsh, I removed/don't use any of those zsh specific features.

## initial setup

Run this:

```
git clone https://github.com/markmossberg/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

## customizing

Any files/directories ending in `.symlink` will get symlinked into `$HOME` as a hidden file/directory without
the `.symlink` extension. This will occur on the execution of `script/bootstrap`.
