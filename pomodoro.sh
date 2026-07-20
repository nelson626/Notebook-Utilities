#!/bin/bash
 
read -p "How many minutes would you like to set a timer for? " waitminutes < /dev/tty

( sleep $((waitminutes * 60)) 
setsid ghostty -e bash -c ' 
notify-send "Break-Time!"
echo "Congratulations! Make your coffee stud btw the time is $(date)"

answer=""
printf "Stop the alert? (y) "
while  [ "$answer" != "y" ]; do
	read -t 10 answer
	notify-send "Break-Time!"
done 
echo "Alert stopped at $(date). Enjoy the coffee. Goodbye!"

sleep 5' ) > /dev/null 2>&1 & 



