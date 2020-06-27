#!/bin/bash

IGreen='\033[0;92m'       # Green
mseagreen='#3CB371'
snow='a16e3e'

#IP=$(curl --silent ifconfig.me/ip)
IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

case $BLOCK_BUTTON in
    3) echo "%{F$mseagreen} %{F$snow}$IP" | xclip ;;
    *) echo "%{F$mseagreen} %{F$snow}$IP" ;;
esac
