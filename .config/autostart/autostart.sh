#!/bin/bash
function run {
  if ! pgrep -f "$1"; then
    "$@" &
  fi
}

# Automount drives
run udiskie

# Network manager
run nm-applet

# Night mode
gammastep -P -O 3000K

