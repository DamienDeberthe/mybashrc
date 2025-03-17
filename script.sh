#!/bin/bash

if git status --porcelain | grep -q .; then
  echo "Il y a des changements."
else
  echo "Aucun changement."
fi


exit 0