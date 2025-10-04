#!/bin/bash

playerctl --player=rhythmbox metadata --follow \
    --format '{{status}}|{{title}}' | while IFS="|" read -r status title; do
    if [[ "$status" == "Playing" ]]; then
        echo " %{F#FFD700}$title%{F-}"
    elif [[ "$status" == "Paused" ]]; then
        echo " %{F#666666}$title%{F-}"
    else
        echo ""  # nothing if stopped
    fi
done

