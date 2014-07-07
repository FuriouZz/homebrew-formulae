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
read -n 1 -p "Do you wish to install this Android developer group?" yn
case $yn in
    [Yy]* ) brew cask install android-developer-group;
esac

# For ruby developers.
echo ""
read -n 1 -p "Do you wish to install this Ruby developer group?" yn
case $yn in
    [Yy]* ) brew cask install ruby-developer-group;
esac

# For designers.
echo ""
read -n 1 -p "Do you wish to install this designer group?" yn
case $yn in
    [Yy]* ) brew cask install designer-group;
esac

# For devops.
echo ""
read -n 1 -p "Do you wish to install this devops group?" yn
case $yn in
    [Yy]* ) brew cask install devops-group;
esac

# For project managers.
echo ""
read -n 1 -p "Do you wish to install this project manager group?" yn
case $yn in
    [Yy]* ) brew cask install project-manager-group;
esac
