#!/usr/bin/env sh

mkdir -p "$HOME/Documents/minute-a-day/$(date +'%Y%m%d')"

imagesnap "$HOME/Documents/minute-a-day/$(date +'%Y%m%d')/photo-$(date +'%Y%m%d-%H%M').jpg" > /dev/null
screencapture -x "$HOME/Documents/minute-a-day/$(date +'%Y%m%d')/screen-$(date +'%Y%m%d-%H%M').jpg"
