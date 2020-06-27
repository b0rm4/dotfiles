#!/usr/bin/env bash

online=$(ip addr | grep "state UP" | cut -d ":" -f2)
ssid=$(iwgetid -r)

#connected=""
#offline=""
connected=""
offline=""
if [[ "$online" ]]; then
  echo ${connected} ${ssid}
else
  echo ${offline}; sleep 0.6; echo ${connected}
fi
