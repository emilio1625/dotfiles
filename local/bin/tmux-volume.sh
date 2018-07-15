#!/bin/env zsh

if is_muted; then
    volume_icon='婢'
else
    volume_icon='墳'
fi

vol=$(get_volume)

echo "$volume_icon$vol%"

