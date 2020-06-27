#!/usr/bin/env bash

start="compton -b"
restart="compton -b"
if [ -e "${HOME}/.config/.composite_enabled" ]; then
  if pgrep "compton" > /dev/null; then
    $restart
  else
    $start
  fi
fi
