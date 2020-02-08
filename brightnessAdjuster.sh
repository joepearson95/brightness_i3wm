if [ $1 -ge 70 ]
then
	sudo su -c "echo 6818 > /sys/class/backlight/intel_backlight/brightness"
elif [ $1 -ge 50 ] && [ $1 -lt 70 ]
then
	sudo su -c "echo 3409 > /sys/class/backlight/intel_backlight/brightness"
elif [ $1 -lt 50 ] && [ $1 -ge 20 ]
then
	sudo su -c "echo 1363 > /sys/class/backlight/intel_backlight/brightness"
else
	sudo su -c "echo 800 > /sys/class/backlight/intel_backlight/brightness"
fi
