# dotfiles

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

## notes

primarily for personal reference

### iterm2

- Profiles > Keys > "Left option acts as": +esc
- Profiles > Working Directory: "Reuse previous session's directory"
- Profiles > Keys > Profile Shortcut Keys > ^j : "Select Menu Item 'Select Previous Tab'"
- Profiles > Keys > Profile Shortcut Keys > ^k : "Select Menu Item 'Select Next Tab'"

### submodules

- to just try something out, git clone it. if you like it, delete the clone and then submodule
- `git submodule add [link] [path]`
    - *important*: don't use full path (i.e. starting from / or ~), use relative path
- to remove a submodule (not exactly sure)

```
git ls --stage [path to submodule dir]
git rm --cached [path to submodule dir]
vim .dotfiles/.git/config # delete relevant lines
vim .dotfiles/.gitmodules # delete relevant lines
rm -rf [path to submodule dir]
```
- [helpful link](http://chrisjean.com/2009/04/20/git-submodules-adding-using-removing-and-updating/)

### gcc

As of OS X Mavericks (as far I as I know), gcc has secretly been replaced by clang.
Use brew to manually install gcc and symlink it in `/usr/local/bin`

    ln -sv /usr/local/bin/gcc-4.9 /usr/local/bin/gcc
    ln -sv /usr/local/bin/g++-4.9 /usr/local/bin/g++

### mamp

If you ever find yourself doing php dev, get [mamp](http://mamp.info). there are a few configs you should make though

- By default, there is caching which prevents instant refreshing
    - edit `/Applications/MAMP/bin/php/[php version/conf/php.ini` and comment out everything under the "OPcache" section
- For error messages, set `display_errors = On` in the same file
