#!/usr/bin/env bash

echo "\n\n=== === === === === === === === === ===\n\n"

echo "Turn off beep..."
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
echo "...done"

echo "configure PyWalFox (pywal for Firefox)..."
echo "Extensions on: https://addons.mozilla.org/en-US/firefox/addon/pywalfox"
sudo pywalfox install
echo "...done"

echo "Setup http-server..."
http-server ~/.config/chevron/dist/
echo "...done"

echo "Prepare neovim..."
rm -rf $HOME/.local/share/nvim
echo "...done"


echo "\n\n=== === === === === === === === === ===\n\n"
