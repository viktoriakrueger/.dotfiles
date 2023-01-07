bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'

beep="paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga"

p=$(eval $bat | grep 'percentage' | awk '{print $2}' | awk -F '.' '{print $1}')

if [[ "$p" -le 100 ]] ; then
    eval $beep
fi
