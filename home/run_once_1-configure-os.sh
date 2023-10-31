#!/usr/bin/env bash

echo "Turn off beep..."
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
echo "...done"
