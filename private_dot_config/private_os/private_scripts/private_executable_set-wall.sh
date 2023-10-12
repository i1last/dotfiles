#!/usr/bin/env bash

wal -qni ${os}/walls/ --backend haishoku
feh --bg-fill "$(< "$HOME/.cache/wal/wal")"
wal-telegram --wal  # On Telegram Desktop: Settings -> Chat settings -> Choose from file -> "~/.cache/wal-telegram/*.tdesktop-theme" -> Keep changes
