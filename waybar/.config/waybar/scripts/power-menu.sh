#!/bin/bash
options="Suspend\nReboot\nShutdown\nLogout\nLock"
chosen=$(echo -e "$options" | rofi -i -dmenu -theme-str 'listview { lines: 5; }' -p "Power Menu")

case $chosen in
  "Shutdown") systemctl poweroff ;;
  "Reboot")   systemctl reboot ;;
  "Logout")   niri msg action quit --skip-confirmation ;;
  "Suspend")  systemctl suspend ;;
  "Lock")     swaylock ;;
  *)          exit 1 ;;
esac
