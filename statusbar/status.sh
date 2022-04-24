#!/bin/sh
LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")
#futuro meter funciones aparte

export IDENTIFIER="unicode"

print_volume() {
  vol="$(amixer -D pulse sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }' | tr -d '%' | head -1)"
	echo -ne "$vol"
}
print_datetime() {
  datetime="$(date "+%a %d %b %I:%M")"
  echo -ne "${datetime}"
}

while true; do
    xsetroot -name "                 | 📅 $(print_datetime)"

				sleep 1
done
