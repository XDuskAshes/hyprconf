#!/bin/bash

# waybar menu using wofi

OPTIONS="Restart Waybar\nLogout Menu"

SELECT=$(echo -e "$OPTIONS" | wofi --dmenu --prompt "wbmenu")

case "$SELECT" in
    "Restart Waybar")
        ~/.config/hypr/waybar/scripts/wbrestart.sh
        ;;
    "Logout Menu")
        wlogout
        ;;
    *)
esac
