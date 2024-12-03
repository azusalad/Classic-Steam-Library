#!/bin/bash

if [ ! -d "${HOME}/.local/share/Steam/steamui/skins/Classic-Steam-Library" ]; then
  mkdir -p "${HOME}/.local/share/Steam/steamui/skins/Classic-Steam-Library"
fi

rsync -avhxzP --exclude={'install.sh','.github','.git'} --delete "./" "${HOME}/.local/share/Steam/steamui/skins/Classic-Steam-Library/*"