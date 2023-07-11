#!/usr/bin/env bash

A=$(wofi --show dmenu --width 200 --height 210 --hide-scroll --cache-file=/dev/null --prompt=hide --button-width 200 <<EOF
 Lock
 Suspend
 Logout
 Reboot
 Shutdown
 Sway reload
EOF
)

case "$A" in

    *Lock) swaylock -l --indicator-radius 100 --ring-color 0066ff --key-hl-color 2e2e2e --image $HOME/.config/sway/wallpaper.jpg  ;;
    
    *Suspend) systemctl suspend ;;

    *Logout) swaymsg exit ;;

    *Reboot) systemctl reboot ;;

    *Shutdown) systemctl poweroff ;;
    
    *reload) swaymsg reload ;;

esac

exit 0

