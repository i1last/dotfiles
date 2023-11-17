#!/usr/bin/bash

if [[ $(pactl list sources | grep -A 10 RUNNING | grep 'Mute: ' | sed 's/^.*: //g') == "yes" ]]
then
  echo "󰍭 "  # icon: mic is muted
else
  echo "󰍬 "  # icon: mic is not muted
fi
