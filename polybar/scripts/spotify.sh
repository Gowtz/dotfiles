#!/bin/bash

status=$(playerctl --player=brave status 2>/dev/null)
title=$(playerctl --player=brave metadata --format "{{ title }}" 2>/dev/null)

if [[ "$status" == "Playing" ]]; then
    echo " %{F#1DB954}$title%{F-}"
elif [[ "$status" == "Paused" ]]; then
    echo " %{F#666666}$title%{F-}"
fi
