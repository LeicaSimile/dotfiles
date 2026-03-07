#!/bin/bash
function run {
  if ! pgrep -f "$1"; then
    "$@" &
  fi
}

# Automount drives
run udiskie

# Audio
run pipewire 
run pipewire-pulse
run wireplumber

# Network manager
run nm-applet

# Night mode
redshift -P -O 3000K

