#!/bin/sh

# To use this file just excute the command line bellow:
# sh <(curl -sSL http://projects.dev/hellobitches/homebrew-formulae/install.sh)

set -e

# Update homebrew
brew update

# Install caksroom
brew install caskroom/cask/brew-cask # Todo check if already installed or 2&>1

# Link caskroom to alfred
brew cask alfred link

# Tap dependents repositories
brew tap hellobitches/formulae # Todo check if already tapped
brew tap caskroom/fonts # Todo check if already tapped

# Install common group
brew cask install common-group

# For android developers.
echo ""
echo "Do you wish to install this \033[0;32mAndroid developer\033[0m group? [yn] \c"
read -n 1 yn

case $yn in
    [Yy])
        brew cask install android-developer-group
        echo "\033[32minstalled\033[0m"
        ;;
esac

# For ruby developers.
echo ""
echo "Do you wish to install this \033[32mRuby developer\033[0m group? [yn] \c"
read -n 1 yn

case $yn in
    [Yy])
        brew cask install ruby-developer-group
        echo "\033[32minstalled\033[0m"
        ;;
esac

# For designers.
echo ""
echo "Do you wish to install this \033[32mdesigner\033[0m group? [yn] \c"
read -n 1 yn

case $yn in
    [Yy])
        brew cask install designer-group
        echo "\033[32minstalled\033[0m"
        ;;
esac

# For devops.
echo ""
echo "Do you wish to install this \033[32mdevops\033[0m group? [yn] \c"
read -n 1 yn

case $yn in
    [Yy])
        brew cask install devops-group
        echo "\033[32minstalled\033[0m"
        ;;
esac

# For project managers.
echo ""
echo "Do you wish to install this \033[32mproject manager\033[0m group? [yn] \c"
read -n 1 yn

case $yn in
    [Yy])
        brew cask install project-manager-group
        echo "\033[32minstalled\033[0m"
        ;;
esac
echo ""
