Dotfiles
========

This repository includes all of my custom dotfiles.  They should be cloned to
your home directory so that the path is `~/dotfiles/`.  The included setup script
creates symlinks from your home directory to the actual files in `~/dotfiles/`.

It is smart enough to back up your existing dotfiles into a `~/dotfiles_old/`
directory if you already have any dotfiles of the same name as the dotfiles to
be symlinked in your home directory.

I also use `zsh` as my shell of choice.  As such, the setup script also clones
the `oh-my-zsh` repository from my GitHub.  It then checks to see if `zsh` is
installed and if so, if it has been configured as the default shell, and if it
hasn't, it runs a `chsh -s $(which zsh)` (changes take effect on subsequent
login).

So, to recap, the install script will:

1. Back up any existing dotfiles in your home directory to `~/dotfiles_old/`
2. Create symlinks to the dotfiles in `~/dotfiles/` in your home directory
3. Clone the `oh-my-zsh` repository from my GitHub (for use with `zsh`)
4. Check to see if `zsh` is installed, if it isn't, try to install it.
5. If zsh is installed, run a `chsh -s` to set it as the default shell.

Installation
------------

``` bash
git clone git://github.com/michaeljsmalley/dotfiles ~/dotfiles
cd ~/dotfiles
./makesymlinks.sh
```
