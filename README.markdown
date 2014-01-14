# dotfiles

A bunch of files that basically configure things to how I like them. Many thanks
to [@holman](https://github.com/holman) for creating the
[original setup](https://github.com/holman/dotfiles), from which this repository
was forked from. Since I don't use zsh, I removed/don't use any of those zsh
specific features.

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

To set up vim, execute `vim/install.sh` which will set up Vundle and
install all plugins specified in `vim/vimrc.symlink`.

To set up Sublime Text 2, run `./sublime2/setup` which will back up the current
User preferences from `Packages/User` to `Packages/User.backup`, symlink
`~/.dotfiles/sublime2/User` to `Packages/User`, and install the
[Flatland](http://github.com/thinkpixellab/flatland) theme.

## customizing

Any files/directories ending in `.symlink` will get symlinked into `$HOME` as a
hidden file/directory without the `.symlink` extension. This will occur on the
execution of `script/bootstrap`.

## notes

primarily for personal reference

### iterm2

- Profiles > Keys > "Left option acts as": +esc
- Profiles > Working Directory: "Reuse previous session's directory"
- Profiles > Keys > Profile Shortcut Keys > ^j : "Select Menu Item 'Select Previous Tab'"
- Profiles > Keys > Profile Shortcut Keys > ^k : "Select Menu Item 'Select Next Tab'"

### gcc

As of OS X Mavericks (as far I as I know), gcc has secretly been replaced by clang.
Use brew to manually install gcc and symlink it in `/usr/local/bin`

    ln -sv /usr/local/bin/gcc-4.9 /usr/local/bin/gcc
    ln -sv /usr/local/bin/g++-4.9 /usr/local/bin/g++

### mamp

If you ever find yourself doing php dev, get [mamp](http://mamp.info). there are
a few configs you should make though

- By default, there is caching which prevents instant refreshing
    - edit `/Applications/MAMP/bin/php/[php version/conf/php.ini` and comment out
      everything under the "OPcache" section
- For error messages, set `display_errors = On` in the same file
