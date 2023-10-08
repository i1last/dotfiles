#!/usr/bin/env bash 

mkdir -p $CHEZMOI_SOURCE_DIR/__tweaks/data/pkgs/

pacman -Qe | cut -d " " -f 1 > $CHEZMOI_SOURCE_DIR/__tweaks/data/pkgs/pkgs-arch.txt
pip freeze > $CHEZMOI_SOURCE_DIR/__tweaks/data/pkgs/pkgs-pip.txt
