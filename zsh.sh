sudo apt-get update

# Download and install Menlo for Powerline fonts from here (for VS Code terminal).
# (Make terminal font size 14 (nothing else works!)
# https://github.com/abertsch/Menlo-for-Powerline

# Install Powerline fonts for Agnoster theme.
sudo apt-get install powerline fonts-powerline

# Install zsh.
sudo apt-get install zsh
zsh --version

# Make zsh default shell.
sudo usrmod -s /usr/bin/zsh $(whoami)

# Install oh my zsh!
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Change ~/.zshrc default theme to 'Agnoster'
