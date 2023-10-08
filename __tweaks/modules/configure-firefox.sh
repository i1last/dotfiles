#!/usr/bin/env bash

# Configure Chrome dir for userChrome settings
firefoxDefaultReleaseIndex=$(ls $HOME/.mozilla/firefox/ | grep 'default-release' | sed 's/\..*//')
mv ${CHEZMOI_SOURCE_DIR}/dot_mozilla/firefox/*.default-release/ ${CHEZMOI_SOURCE_DIR}/dot_mozilla/firefox/${firefoxDefaultReleaseIndex}.default-release/

# Configure PyWalFox (pywal for Firefox)
sudo pywalfox install
firefox "https://addons.mozilla.org/en-US/firefox/addon/pywalfox/"
