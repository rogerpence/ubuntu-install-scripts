#!/usr/bin/env bash

# https://linuxhint.com/install_zsh_shell_ubuntu_1804/

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

# Add this to the bottom of ~/.zshrc to start prompt on newline. 
# From here:
# https://stackoverflow.com/questions/41017917/add-newline-to-oh-my-zsh-theme

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



