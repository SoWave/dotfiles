#!/bin/sh

STATUS="$(systemctl --user status gammastep | grep 'Active' | awk -F ' ' '{print $2}')"

if [[ $STATUS = "active" ]]; then
	systemctl --user stop gammastep
elif [[ $STATUS = "inactive" ]]; then
	systemctl --user start gammastep
else
    notify-send "gammastep is $STATUS."
fi

exit 0
