#!/usr/bin/env bash

targetFirefox="$HOME/.config/firefox/profiles/default-release"
sourceFirefox="$CHEZMOI_SOURCE_DIR/private_dot_config/firefox/profiles/default-release"

if [[ -d $targetFirefox ]]; then  # if $targetFirefox exist
  if [[ -s $targetFirefox/prefs.js ]]; then  # if file is non-zero
    cat $targetFirefox/prefs.js > \
      $sourceFirefox/prefs.js
  fi

  if [[ -s $targetFirefox/extensions.json ]]; then  # if file is non-zero
    cat $targetFirefox/extensions.json > \
      $sourceFirefox/extensions.json
  fi

  if [[ -s $targetFirefox/extension-settings.json ]]; then  # if file is non-zero
    cat $targetFirefox/extension-settings.json > \
      $sourceFirefox/extension-settings.json
  fi

  if [[ -s $targetFirefox/extension-preferences.json ]]; then  # if file is non-zero
    cat $targetFirefox/extension-preferences.json > \
      $sourceFirefox/extension-preferences.json
  fi
fi
