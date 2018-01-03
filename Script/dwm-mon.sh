#!/bin/sh
while true; do
	xsetroot -name "Mem $(free -m | grep '^Mem' | awk '{print $3"MB"}') $( date +"%F %R" )"
	sleep 1
done &


