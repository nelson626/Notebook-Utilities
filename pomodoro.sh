#!/bin/bash

#defaults to sleep for 15 minutes
sleep 1080
notify-send "Break-Time!"
echo "Congratulations! Make your coffee stud btw the time is $(date)"

answer=""
printf 'Stop the alert? (y)'
while  [ "$answer" != "y" ]; do
	read -t 10 answer
	notify-send "Break-Time!"
done 
echo "Alert stopped at $(date). Enjoy the coffee."

