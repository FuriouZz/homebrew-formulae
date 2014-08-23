#!/bin/sh

# To use this file just excute the command line bellow:
# $ sh <(curl -sSL https://raw.githubusercontent.com/hellobitches/homebrew-formulae/master/install.sh)

set -e

# Update homebrew
brew update

# Install caksroom
if ! [ `brew list -1 | grep '^brew-cask$'` ]; then
  brew install caskroom/cask/brew-cask
fi

# Tap dependents repositories
if ! [ `brew tap | grep '^hellobitches/formulae$'` ]; then
  brew tap hellobitches/formulae;
fi

if ! [ `brew tap | grep '^caskroom/fonts$'` ]; then
  brew tap caskroom/fonts;
fi

# Install common group
if ! [ `brew list -1 | grep '^common-group$'` ]; then
  brew cask install common-group
fi

# Link caskroom to alfred
if ! [ `brew list -1 | grep '^alfred$'` ]; then
  brew cask alfred link
fi

# Declare Cask groups
declare -a groups=("android-developer" "ruby-developer" "designer" "devops" "project-manager")
declare -a groupLabels=("Android developer" "Ruby developer" "Designer" "Devops" "Project manager")

# Ask to install group
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

# # Lauchnctl to auto brewupgrade
#
# if [ `launchctl list | grep 'es.hellobitch.brewupgrade$'` ]; then
#   launchctl unload ~/Library/LaunchAgents/es.hellobitch.brewupgrade.plist > /dev/null 2>&1;
# fi
#
# mkdir ~/Library/LaunchAgents/
# echo `wget -qO- https://raw.githubusercontent.com/hellobitches/homebrew-formulae/master/templates/es.hellobitch.brewupgrade.plist` > ~/Library/LaunchAgents/es.hellobitch.brewupgrade.plist
# launchctl load ~/Library/LaunchAgents/es.hellobitch.brewupgrade.plist
