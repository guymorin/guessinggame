#!/bin/bash
# File : guessinggame.sh
nb=$(ls -A|wc -l)
clear
function again {
	echo "> Try again"
}
while [[ $try -ne $nb ]]
do
	read -p "Guess the number of files in the current directory:" try
	if [[ $try =~ ^[0-9]+$ ]]
	then
		if [ $try -gt $nb ]
		then
			echo "> Too high!"
			again
		elif [ $try -lt $nb ]
		then
			echo "> Too low!"
			again
		fi
	else
		echo "> Please type a number"
	fi
done
echo "> Congratulations! $try is the correct number!"
