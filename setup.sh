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
  "telnet"
  "tree"
  "trash"
  "pyenv"
  "pyenv-virtualenv"
)

for homebrew_package in "${homebrew_packages[@]}"; do
  brew install "$homebrew_package"
done

# Install Casks
echo "Installing Homebrew Cask Packages..."

homebrew_cask_packages=(
  "visual-studio-code"
  "brave-browser"
  "docker"
  "rectangle"
  "postman"
  "notion"
  "iterm2"
  "the-unarchiver"
  "spotify"
  "teamviewer"
  "stremio"
  "iina"
  "raycast"
  "gray"
)

for homebrew_cask_package in "${homebrew_cask_packages[@]}"; do
  brew install --cask "$homebrew_cask_package"
done

# zsh and oh-my-zsh
echo "Adding ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# configure git
git config --global user.name "<github_username>"
git config --global user.email "<github_email>"

# Generate SSH key
echo "Generating SSH keys..."
ssh-keygen -t rsa -C "eduardosantoshf@gmail.com"

pbcopy < ~/.ssh/id_rsa.pub
echo "Copied SSH key to clipboard - You can now add it to Github!"

# Complete
echo "Installation Complete!"
