# dotfiles (ubuntu)

A bunch of files that basically configure things to how I like them. Many thanks to [@holman](https://github.com/holman)
for creating the [original setup](https://github.com/holman/dotfiles), from which this repository was forked from.
Since I don't use zsh, I removed/don't use any of those zsh specific features.

## core setup

Run this:

```
git clone https://github.com/markmossberg/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

## editors

To set up vim, run ```./vim/vimpluginsetup``` which will install vim plugins as submodules.

To set up Sublime Text 2, run ```./sublime2/setup``` which will back up the current User
preferences from ```Packages/User``` to ```Packages/User.backup```, symlink 
```~/.dotfiles/sublime2/User``` to ```Packages/User```, and install the 
[Flatland](http://github.com/thinkpixellab/flatland) theme.

## customizing

Any files/directories ending in `.symlink` will get symlinked into `$HOME` as a hidden file/directory without
the `.symlink` extension. This will occur on the execution of `script/bootstrap`.


## differences from osx branch

- delete osx specific stuff
    - scripts/binaries/symlinks in bin
    - osx directory
    - iterm directory
- in script/bootstrap:
	- remove automatic gitconfig generation. this means you have to supply your own git/gitconfig.symlink file and it won't get dynamically created.

## misc notes

- to change default text editor: `sudo update-alternatives --config editor`
