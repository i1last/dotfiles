#!/usr/bin/env bash

firefoxDefaultReleaseIndex=$(ls $HOME/.mozilla/firefox/ | grep 'default-release' | sed 's/\..*//')
mv ../dot_mozilla/firefox/*.default-release/ ../dot_mozilla/firefox/${firefoxDefaultReleaseIndex}.default-release/
