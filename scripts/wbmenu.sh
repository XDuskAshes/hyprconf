#!/bin/bash

# waybar menu using wofi

OPTIONS="Logout Menu\nTake a screenshot\nRestart Waybar\nRestart Hyprpaper"

SELECT=$(echo -e "$OPTIONS" | wofi --dmenu --prompt "wbmenu")

case "$SELECT" in
    "Logout Menu")
        wlogout
        ;;
    "Take a screenshot")
        hyprshot -m output
        ;;
    "Restart Waybar")
        $HOME/.config/hypr/scripts/wbrestart.sh
        ;;
    "Restart Hyprpaper")
        $HOME/.config/hypr/scripts/hprestart.sh
        ;;
    *)
esac
