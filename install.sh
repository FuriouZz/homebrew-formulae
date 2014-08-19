#!/bin/sh

# To use this file just excute the command line bellow:
# $ sh <(curl -sSL https://raw.githubusercontent.com/hellobitches/homebrew-formulae/master/install.sh)

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

declare -a groups=("android-developer" "ruby-developer" "designer" "devops" "project-manager")
declare -a groupLabels=("Android developer" "Ruby developer" "Designer" "Devops" "Project manager")


# for (( i = 0 ; i < ${#groups[@]} ; i++ )) do
#   echo ${names[$i]}

# for k in "${groups[@]}"
for (( i = 0 ; i < ${#groups[@]} ; i++ )) do

    echo ""
    echo "Do you wish to install this \033[0;32m${groupLabels["$i"]}\033[0m group? [yn] \c"
    read -n 1 yn

    case $yn in
        [Yy])
            brew cask install "${groups["$i"]}-group"
            echo "\033[32minstalled\033[0m"
            ;;
    esac
done

echo ""
