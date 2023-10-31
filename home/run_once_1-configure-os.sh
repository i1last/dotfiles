#!/usr/bin/env bash

echo "Turn off beep..."
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
echo "...done"

echo "configure PyWalFox (pywal for Firefox)..."
echo "Extensions on: https://addons.mozilla.org/en-US/firefox/addon/pywalfox"
sudo pywalfox install
echo "...done"
