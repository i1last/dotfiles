#!/usr/bin/env bash

# Options
lock='Lock'
reboot='Reboot'
shutdown='Shutdown'
suspend='Suspend'
logout='Logout'
logkey="Listen input keys"
syncthing="Open Syncthing web-interface"
wall='Random Wall'
restart='Restart BSPWM'

# Execute Command
confirm_run_cmd() {
  yes='Yes'
  no='No'
  selected="$(echo -e "$yes\n$no" | rofi -dmenu -p '' -mesg 'Are you Sure?')"
  if [[ "$selected" == "$yes" ]]; then
    if [[ $1 == '--shutdown' ]]; then
      systemctl poweroff
    elif [[ $1 == '--reboot' ]]; then
      systemctl reboot
    elif [[ $1 == '--suspend' ]]; then
      mpc -q pause
      amixer set Master mute
      systemctl suspend
    elif [[ $1 == '--logout' ]]; then
      bspc quit
    fi
  else
    exit 0
  fi
}

# Actions
chosen="$(echo -e "$lock\n$reboot\n$shutdown\n$suspend\n$logout\n$logkey\n$syncthing\n$wall\n$restart" | rofi -dmenu -p '' -mesg "Uptime: $(uptime -p | sed -e 's/up //g')")"
case ${chosen} in
  $shutdown)
    confirm_run_cmd --shutdown
    ;;
  $reboot)
    confirm_run_cmd --reboot
    ;;
  $lock)
    betterlockscreen -l
    ;;
  $restart)
    sh $HOME/.config/bspwm/bspwmrc
    ;;
  $suspend)
    confirm_run_cmd --suspend
    ;;
  $logout)
    confirm_run_cmd --logout
    ;;
  $wall)
    ${os}/scripts/set-wall.sh
    ;;
  $logkey)
    $TERMINAL -e sh -c "xev | awk -F '[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", \$5, \$8 }'"
    ;;
  $syncthing)
    xdg-open localhost:8384
    ;;
esac
