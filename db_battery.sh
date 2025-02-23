#!/bin/sh

# BAT0 percentage
battery=$(acpi -b | grep -oP '\d+%' | tr -d '%')

# Power source
if acpi -b | grep -q "Charging"; then
	icon=""
else
	# Icon based on BAT0 percentage
	if [ "$battery" -ge 100 ]; then
		icon=""
	elif [ "$battery" -ge 75 ]; then
		icon=""
	elif [ "$battery" -ge 50 ]; then
		icon=""
	elif [ "$battery" -ge 25 ]; then
		icon=""
	elif [ "$battery" -ge 10 ]; then
		icon=""
	else
		icon=""
	fi
fi

# Output
echo "$icon $battery%"

