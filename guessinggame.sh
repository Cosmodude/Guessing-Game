#!bin/bash

count=$(ls | wc -l)

echo 'How many files are in the current directory?'

while true;
do
	read user_count
	
	if [[ count -eq user_count ]]; then
		echo 'Congratulations! You won!'
		break;
	else 
		if [[ user_count -gt count ]]; then
			echo 'Your number is bigger! Try again!' 
		else 
			echo 'Your number is smaller! Try again!'
		fi	
	fi
done;
