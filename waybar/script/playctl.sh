# #!/bin/bash

# playerctl_status=$(playerctl status 2>/dev/null)

# if [ "$playerctl_status" = "Playing" ] || [ "$playerctl_status" = "Paused" ]; then
#     playerctl -a metadata --format '{"text": "{{title}}", "class": "{{status}}"}' -F
# else
#     echo '{"text": "未在播放", "class": "Stopped"}'
# fi
# #!/bin/bash

# playerctl_status() {
#     if playerctl status >/dev/null 2>&1; then
#         playerctl -a metadata --format '{"text": "{{artist}} - {{title}}", "class": "{{status}}"}' -F
#     else
#         echo '{"text": "未在播放", "class": "Stopped"}'
#         sleep 1
#         playerctl_status
#     fi
# }

# while true; do
#     playerctl_status
#     sleep 1
# done
# #!/bin/bash

# if playerctl status >/dev/null 2>&1; then
#     player_status=$(playerctl status)
#     if [[ $player_status == "Playing" ]]; then
#         echo '{"text": "'"$(playerctl metadata artist)-$(playerctl metadata title)"'", "class": "Playing"}'
#     elif [[ $player_status == "Paused" ]]; then
#         echo '{"text": "'"$(playerctl metadata artist)-$(playerctl metadata title)"'", "class": "Paused"}'
#     else
#         echo '{"text": "未在播放", "class": "Stopped"}'
#     fi
# else
#     echo '{"text": "未在播放", "class": "Stopped"}'
# fi
#!/bin/bash

#play_icon=""
#play_icon=<span foreground='#bb9af7'></span>
#pause_icon=<span foreground='#bb9af7'></span>
#stop_icon=" "

if playerctl status >/dev/null 2>&1; then
    player_status=$(playerctl status)
    if [[ $player_status == "Playing" ]]; then
        echo '{"text": "'"<span foreground='#bb9af7'></span>   $(playerctl metadata title)"'", "class": "Playing"}'
    elif [[ $player_status == "Paused" ]]; then
        echo '{"text": "'"<span foreground='#bb9af7'></span>   $(playerctl metadata title)"'", "class": "Paused"}'
    else
        echo '{"text": "'"<span foreground='#bb9af7'> </span> 未在播放"'", "class": "Stopped"}'
    fi
else
    echo '{"text": "'"<span foreground='#bb9af7'> </span> 未在播放"'", "class": "Stopped"}'
fi
#$(playerctl metadata artist) -
