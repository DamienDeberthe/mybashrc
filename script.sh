#!/bin/bash

git status --porcelain

echo ""
echo ""

if git status --porcelain | grep -q .; then
  if git status --porcelain | awk '$1 ~ /M/ { found=1 } END { exit !found }'; then
    echo "Il y a des changements."
  fi
fi


exit 0