#!/bin/bash
function run {
  if ! pgrep -f "$1"; then
    "$@" &
  fi
}

# Bar
run waybar

# Music
run mpd
run mpdas

# Automount drives
run udiskie

# Network manager
run nm-applet

# Night mode
gammastep -P -O 3000K

