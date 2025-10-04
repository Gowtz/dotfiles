#!/bin/bash

playerctl --player=brave metadata --follow --format '{{status}}|{{title}}' \
| while IFS="|" read -r status title; do
    if [[ "$status" == "Playing" ]]; then
        echo " %{F#1DB954}$title%{F-}"
    elif [[ "$status" == "Paused" ]]; then
        echo " %{F#666666}$title%{F-}"
    else
        echo ""  # clear output if stopped or no data
    fi
done
