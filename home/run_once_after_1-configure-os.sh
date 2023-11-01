#!/usr/bin/env bash

echo -e "\n\n=== === === === === === === === === ===\n\n"

echo "Turn off beep..."
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
echo "...done"

echo "configure PyWalFox (pywal for Firefox)..."
echo "Extensions on: https://addons.mozilla.org/en-US/firefox/addon/pywalfox"
sudo pywalfox install &> /dev/null
echo "...done"

echo "Prepare neovim if it need:"
echo "rm -rf $HOME/.local/share/nvim"


echo -e "\n\n=== === === === === === === === === ===\n\n"
