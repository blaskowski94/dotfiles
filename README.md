# Bob’s dotfiles forked from Mathias

### Using Git and the bootstrap script

Clone this repository in ~/dotfiles. Whenever you need to make changes to your dotfiles, update them in the ~/dotfiles repository and commit your changes. Then run `./bootstrap.sh` to make the changes take effect. 

There is a .extra_default file in the repo with some default values for the .extra file. You should create a .extra file in this repo's folder (it will be ignored by git so no secrets are committed) and copy the defaults to the .extra file. Add any other configurations here that you do not wish to check into git. 

To update while avoiding the confirmation prompt:

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](https://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew.sh
```
