#!/bin/sh

(cd ~/.config/waybar/modules/powermanager && ls | wofi --dmenu -c /home/piotr/.config/wofi/config-power | xargs sh)
