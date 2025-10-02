#!/bin/bash

status=$(playerctl --player=rhythmbox status 2>/dev/null)
title=$(playerctl --player=rhythmbox metadata --format "{{ title }}" 2>/dev/null)

if [[ -z "$status" ]]; then
    exit 0
fi

if [[ "$status" == "Playing" ]]; then
    echo " %{F#FFD700}$title%{F-}"
elif [[ "$status" == "Paused" ]]; then
    echo " %{F#666666}$title%{F-}"
fi


