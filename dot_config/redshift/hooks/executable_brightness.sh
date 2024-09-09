#!/usr/bin/env sh
# Set brightness via xbrightness when redshift status changes

# Set brightness values for each status.
# Range from 1 to 100 is valid
brightness_day=100
brightness_transition=50
brightness_night=30
# Set fps for smoooooth transition

set_brightness() {
	#xbacklight -set $1 -fps $fps -ctrl $backlight &
	ddcutil --display 1 setvcp 10 $1 > /dev/null
	echo $(expr 240 \* $1) | sudo /usr/bin/tee "/sys/class/backlight/intel_backlight/brightness"
}

if [ "$1" = period-changed ]; then
	case $3 in
		night)
			set_brightness $brightness_night 
			;;
		transition)
			set_brightness $brightness_transition
			;;
		daytime)
			set_brightness $brightness_day
			;;
	esac
fi
