#!/usr/bin/env bash

# To use this file just excute the command line bellow:
# curl -L https://raw.githubusercontent.com/hellobitches/homebrew-formulae/master/install.sh | sh

# Update homebrew
brew update

# Install caksroom
brew install caskroom/cask/brew-cask # Todo check if already installed or 2&>1

# Link caskroom to alfred
brew cask alfred link

# Tap dependents repositories
tap hellobitches/formulae # Todo check if already tapped
tap caskroom/fonts # Todo check if already tapped

# For android developers.
echo ""
echo -e -n "Do you wish to install this \033[0;32mAndroid developer\033[0m group? [yn] "
read -n 1 yn
case $yn in
    [Yy]* ) brew cask install android-developer-group;
esac

# For ruby developers.
echo ""
echo -e -n "Do you wish to install this \033[32mRuby developer\033[0m group? [yn] "
read -n 1 yn
case $yn in
    [Yy]* ) brew cask install ruby-developer-group;
esac

# For designers.
echo ""
echo -e -n "Do you wish to install this \033[32mdesigner\033[0m group? [yn] "
read -n 1 yn
case $yn in
    [Yy]* ) brew cask install designer-group;
esac

# For devops.
echo ""
echo -e -n "Do you wish to install this \033[32mdevops\033[0m group? [yn] "
read -n 1 yn
case $yn in
    [Yy]* ) brew cask install devops-group;
esac

# For project managers.
echo ""
echo -e -n "Do you wish to install this \033[32mproject manager\033[0m group? [yn] "
read -n 1 yn
case $yn in
    [Yy]* ) brew cask install project-manager-group;
esac
echo ""
