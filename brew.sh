#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install Bash 5.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

brew install git
brew install tree
brew install nvm
brew cask install postman
brew cask install atom
brew cask install java
brew cask install atom
brew cask install intellij-idea
brew cask install vlc
brew cask install iterm2
brew cask install docker
brew cask install google-chrome
brew cask install slack
brew cask install insomnia
brew cask install spotify
brew cask install gimp

# Remove outdated versions from the cellar.
brew cleanup
