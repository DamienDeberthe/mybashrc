#!/bin/bash

if ! grep -q "Installed with 'mybashrc'" ~/.bashrc; then
  echo -e "\n" >> ~/.bashrc
  wget -q -O mybashrc  https://raw.githubusercontent.com/DamienDeberthe/mybashrc/main/mybashrc 
  cat mybashrc >> ~/.bashrc
  rm mybashrc
  echo "'mybashrc' has been installed."
  echo "To activate, reload terminal or run command 'source ~/.bashrc'."
else
  echo "'mybashrc' already installed for current user."
fi

exit 0