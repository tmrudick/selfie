#!/usr/bin/env sh

mkdir -p "$HOME/Documents/selfies/$(date +'%Y%m%d')"

imagesnap "$HOME/Documents/selfies/$(date +'%Y%m%d')/photo-$(date +'%Y%m%d-%H%M').jpg" > /dev/null
screencapture -x "$HOME/Documents/selfies/$(date +'%Y%m%d')/screen-$(date +'%Y%m%d-%H%M').jpg"
