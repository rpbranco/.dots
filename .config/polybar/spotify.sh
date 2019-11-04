#!/bin/bash

cd .config/polybar/spotify

dbus-monitor --profile "interface=org.freedesktop.DBus.Properties, member=PropertiesChanged" |
while read -r line; do
  [ "$(playerctl status)" = "Playing" ] && echo "" || echo ""
done
