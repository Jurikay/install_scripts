#!/usr/bin/env bash

echo "Juris .dotfiles/ osx config."

sleep .5

echo "Sollen wir starten?"
echo "y / n"
read starten
[[ "$starten" == 'y' ]] && echo "oke undlos"
[[ "$starten" != 'y' ]] && echo "na DANN Nicht!" && exit 0

sleep 1

# Check XCode command line tools
function checkXCode() {
    if [[ ! -x /usr/bin/gcc ]]; then
        echob "ERROR:"
        echob "      Xcode Command Line Tools from Apple not found!"
        echob "      CloverGrowerPro.sh needs it";echo
        echob "      Going To Apple Developer Site"
        echob "      Download & Install XCode Command Line Tools then re-run CloverGrowerPro.sh"
        echo
        echob "      Press enter to open a browser to download XCode Command Line Tools"
        read
        open "https://developer.apple.com/downloads/"
        wait
        tput bel
        exit 1
    fi
}



git clone https://github.com/Jurikay/juridotfiles.git $HOME/dev

sleep 1

bash $HOME/dev/scripts/installer



# Check XCode command line tools
function checkXCode() {
    if [[ ! -x /usr/bin/gcc ]]; then
        echob "ERROR:"
        echob "      Xcode Command Line Tools from Apple not found!"
        echob "      CloverGrowerPro.sh needs it";echo
        echob "      Going To Apple Developer Site"
        echob "      Download & Install XCode Command Line Tools then re-run CloverGrowerPro.sh"
        echo
        echob "      Press enter to open a browser to download XCode Command Line Tools"
        read
        open "https://developer.apple.com/downloads/"
        wait
        tput bel
        exit 1
    fi
}