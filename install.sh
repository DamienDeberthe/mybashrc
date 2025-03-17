#!/bin/bash

if ! grep -q "Installed with 'mybashrc'" ~/.bashrc; then
  echo -e "\n" >> ~/.bashrc
  cat mybashrc >> ~/.bashrc
  echo "'mybashrc' has been installed."
else
  echo "'mybashrc' already installed for current user."
fi

exit 0