# Dotfiles

This is a collection of my personal dotfiles. Use at your own risk.

## Install

I manage my dotfiles with [GNU Stow], which creates symlinks in your home
directory to the actual dotfile repository.

Clone this git repository into a sub-directory of your home directory. (If
you choose a directory other than a sub-directory you will have to use
stow’s command line arguments to refer it to that directory.) You can then
install each component by invoking stow:

```bash
$ git clone https://github.com/siebelmann/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
$ stow *git*
```

This will create a symlink for each file in the *git* directory.

[GNU Stow]: https://www.gnu.org/software/stow/
