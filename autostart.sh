#!/bin/bash
function run {
  if ! pgrep -f "$1"; then
    "$@" &
  fi
}

# Bar
run waybar

# Automount drives
run udiskie

# Network manager
#run nm-applet

# Night mode
gammastep -P -O 3000K

# Music
run mpd
sleep 5
run mpdas
