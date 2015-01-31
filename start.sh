#!/usr/bin/env bash

echo "Juris .dotfiles/ osx config."

sleep .5

echo "Sollen wir starten?"
echo "y / n"
read starten
[[ "$starten" == 'y' ]] && echo "oke undlos"
[[ "$starten" != 'y' ]] && echo "na DANN Nicht!" && exit 0

sleep 1

git clone https://github.com/Jurikay/juridotfiles.git $HOME/dev

sleep 1

bash $HOME/dev/scripts/installer
