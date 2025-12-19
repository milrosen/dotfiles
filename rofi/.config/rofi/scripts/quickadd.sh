#!/bin/bash

EVENT=$(echo "" | rofi -dmenu -theme "$HOME/.config/rofi/only_input_and_prompt.rasi" -p "Add Event:") 2>/dev/null
if [ -n "$EVENT" ]; then
  gcalcli quick "$EVENT" --calendar='milton.rosenbaum@gmail.com' &&
    notify-send "Calendar" "Event added: $EVENT" ||
    notifi-send "Calendar" "Failed to add event"
fi
