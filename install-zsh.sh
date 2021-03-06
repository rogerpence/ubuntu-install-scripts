#!/usr/bin/env bash

# Install zsh and Oh My ZSH. This isn't fully automated! Read this file! 

# Much of these instructions came from here:
# https://linuxhint.com/install_zsh_shell_ubuntu_1804/

# Run `install-fonts.sh` first before running this script.  
# 
# After running this script, set these options in VS Code. 
#   Terminal > Integrated: Font Family = Menlo for Powerline
#   Terminal > Integrated: Font Size = 14

sudo apt-get update
sudo apt-get install zsh 
zsh --version
sudo usermod -s /usr/bin/zsh $(whoami)

echo System will reboot now... 
echo Take option 2 on menu shown immediately after reboot. 
echo This is the "Populate your ~/.zshrc with the configuration recommended..." option.

# Install Oh My ZSH
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Change theme in ~/.zshrc to 'agnoster' (agnoster theme is installed by default)
sed -i "s/^ZSH_THEME.*$/ZSH_THEME=\"agnoster\"/" ~/.zshrc

# Echo new prompt_end() function to put a newline after listing current folder in the terminal.
# https://stackoverflow.com/questions/41017917/add-newline-to-oh-my-zsh-theme
cat >> ~/.zshrc <<EOF

prompt_end() {
    if [[ -n $CURRENT_BG ]]; then
        print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
    else
        print -n "%{%k%}"
    fi

    print -n "%{%f%}"
    CURRENT_BG='' 

    #Adds the new line and ➜ as the start character.
    printf "\n ➜";
}
EOF

