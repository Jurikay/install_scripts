#!/usr/bin/env bash

echo "Juris .dotfiles/ osx config."

sleep .5

echo "Sollen wir starten?"
echo "y / n"
read starten
[[ "$starten" == 'y' ]] && echo "oke undlos"
[[ "$starten" != 'y' ]] && echo "na DANN Nicht!" && exit 0

echo "Sind Xcode Developer-Tools schon installiert?"

sleep 1

xcodebuild -version

echo ""

echo "Bitte erst fortfahren wenn die Developer-Tools installiert sind."

echo ""

sleep .5

echo "Sind die Tools installiert? (Abbrechen mit strg-c)"
echo "y / n"
read devtools
[[ "$devtools" == 'y' ]] && echo "oke"
[[ "$devtools" != 'y' ]] && bash $HOME/Desktop/test5.sh

dir="$HOME/jurisdotfiles"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/Jurikay/juridotfiles.git

sleep 1
bash $dir/juridotfiles/scripts/installer
