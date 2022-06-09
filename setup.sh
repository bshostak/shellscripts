#!/bin/bash

#To execute, save this file and then cd to where this is saved. Run, `chmod +x ./setup.sh` and then `./setup.sh`

#Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#Install Cask
echo "Installing brew cask..."
brew tap homebrew/cask

#Install Programming Languages
echo "Installing Programming Languages.."
brew install --cask corretto

#Dev Related Tools
echo "Installing Dev Related Tools..."
brew install git
brew install node
echo "Attempting to install nvm..."
#This will automatically add to the shell profile after
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
if [ ! -d "/Applications/IntelliJ IDEA.app" ]; then
    brew install --cask intellij-idea
fi
if [ ! -d "/Applications/Visual Studio Code.app" ]; then
    brew install --cask visual-studio-code
fi
if [ ! -d "/Applications/Postman.app" ]; then
    brew install --cask postman
fi 

#Browsers
echo "Installing Web Browsers..."
if [ ! -d "/Applications/Firefox.app" ]; then
    brew install --cask firefox
fi 
if [ ! -d "/Applications/Google Chrome.app" ]; then
    brew install --cask google-chrome
fi 
if [ ! -d "/Applications/Microsoft Edge.app" ]; then
    brew install --cask microsoft-edge
fi

#Communcation Related Apps
echo "Installing Communication Apps..."
if [ ! -d "/Applications/Slack.app" ]; then
    brew install --cask slack
fi

#Other things I use daily-ish
if [ ! -d "/Applications/OBS.app" ]; then
    brew install --cask obs
fi