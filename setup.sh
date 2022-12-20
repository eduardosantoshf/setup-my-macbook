# based on https://gist.github.com/chris-sev/45a92f4356eaf4d68519d396ef42dd99

#!/bin/bash
set -euo pipefail # explanation: https://explainshell.com/explain?cmd=set+-euo+pipefail

echo "Setting up your MacBook..."
sudo -v

# Homebrew Installation
echo "Installing Homebrew..."

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo "Homebrew Successfully Installed!"

# Install Homebrew Packages
cd ~
echo "Installing Homebrew Packages..."

homebrew_packages=(
  "git"
  "htop"
  "wget"
  "curl"
  "tree"
  #"python@3.10"
  "trash"
  #"thefuck"
)

for homebrew_package in "${homebrew_packages[@]}"; do
  brew install "$homebrew_package"
done

# Install Casks
echo "Installing Homebrew Cask Packages..."

homebrew_cask_packages=(
  "visual-studio-code"
  "brave-browser"
  #"intellij-idea"
  "docker"
  "rectangle"
  "postman"
  "notion"
  "iterm2"
  "firefox"
  "discord"
  #"slack"
  "the-unarchiver"
  "vlc"
  "tg-pro"
  "webtorrent"
  "spotify"
  "teamviewer"
  "caffeine"
)

for homebrew_cask_package in "${homebrew_cask_packages[@]}"; do
  brew install --cask "$homebrew_cask_package"
done

# configure git
git config --global user.name "Eduardo Santos"
git config --global user.email "eduardosantoshf@gmail.com"

# zsh and oh-my-zsh
echo "Adding ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Generate SSH key
echo "Generating SSH keys..."
ssh-keygen -t rsa -C "eduardosantoshf@gmail.com"

pbcopy < ~/.ssh/id_rsa.pub
echo "Copied SSH key to clipboard - You can now add it to Github!"

# to prevent git asking for ssh key passphrase always, do:
eval $(ssh-agent)
ssh-add -K ~/.ssh/id_rsa
echo "Host *
    UseKeychain yes" >> ~/.ssh/config

# Complete
echo "Installation Complete!"