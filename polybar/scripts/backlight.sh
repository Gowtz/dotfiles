#!/usr/bin/env bash

# Get brightness percentage
brightness=$(light -G | cut -d'.' -f1)

# Choose ramp emoji
if [ "$brightness" -ge 90 ]; then icon="🌕"
elif [ "$brightness" -ge 70 ]; then icon="🌔"
elif [ "$brightness" -ge 50 ]; then icon="🌓"
elif [ "$brightness" -ge 30 ]; then icon="🌒"
else icon="🌑"
fi

echo "$icon $brightness%"
