#!/usr/bin/env bash


if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on \
                 label.align=center\ 
else
    sketchybar --set $NAME background.drawing=off
fi
