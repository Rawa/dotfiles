#!/usr/bin/env bash
INTERFACE=$1

output=$(iw dev $INTERFACE link)

not_connected="Not connected."

if [ "$output" == "$not_connected" ]
then
    output="Not connected"
else
    output="$(echo "$output" | grep SSID | cut -d " " -f 2-) $(iw dev $INTERFACE link | grep signal | cut -d " " -f 2-)"
fi

echo $output

