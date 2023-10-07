#!/usr/bin/env bash

# Rename dir
firefoxDefaultReleaseIndex=$(ls $HOME/.mozilla/firefox/ | grep 'default-release' | sed 's/\..*//')
mv ${CHEZMOI_SOURCE_DIR}/dot_mozilla/firefox/*.default-release/ ${CHEZMOI_SOURCE_DIR}/dot_mozilla/firefox/${firefoxDefaultReleaseIndex}.default-release/
