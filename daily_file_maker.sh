daily=$(date -I)
daily+="-Daily.md"
dir="/home/andrewn/Documents/Notes/Daily"

if [[ -f "$dir/$daily" ]]; then 
echo "Daily file already exists, happy typing :)"
ghostwriter "$dir/$daily" &> /dev/null &

else

	read -p "Would you like to create $daily in $dir? (y/n) " answer

	if [[ "$answer" == "y" ]]; then 
		touch "$dir/$daily"
		echo "Created $daily"
		ghostwriter "$dir/$daily" &> /dev/null &
	else 
		echo "Aborted. No file created."
	fi
fi 


