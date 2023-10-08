#!/usr/bin/env bash

# CMDs
uptime="`uptime -p | sed -e 's/up //g'`"

# Options
lock='Lock'
reboot='Reboot'
shutdown='Shutdown'
suspend='Suspend'
logout='Logout'
wall='Random Wall'
restart='Restart BSPWM'
yes='Yes'
no='No'

# Rofi CMD
rofi_cmd() {
    rofi -dmenu -p '' -mesg "Uptime: $uptime"
}

# Confirmation CMD
confirm_cmd() {
    rofi -dmenu -p '' -mesg 'Are you Sure?'
}

# Ask for confirmation
confirm_exit() {
    echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
    echo -e "$lock\n$reboot\n$shutdown\n$suspend\n$logout\n$wall\n$restart" | rofi_cmd
}

# Execute Command
run_cmd() {
    selected="$(confirm_exit)"
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
chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
        run_cmd --shutdown
        ;;
    $reboot)
        run_cmd --reboot
        ;;
    $lock)
        betterlockscreen -l
        ;;
    $restart)
        sh $HOME/.config/bspwm/bspwmrc
        ;;
    $suspend)
        run_cmd --suspend
        ;;
    $logout)
        run_cmd --logout
        ;;
    $wall)
        wal -i ${os}/walls/
        ;;
esac
