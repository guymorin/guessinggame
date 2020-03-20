#!/bin/bash
# File : guessinggame.sh
nb=$(ls -a|wc -l)
clear
while [ -z $end ]
do
	read -p "Guess the number of files in the current directory:" try
	if [[ $try =~ ^[0-9]+$ ]]
	then
		if [ $try -gt $nb ]
		then
			echo "> Too high!"
		elif [ $try -lt $nb ]
		then
			echo "> Too low!"
		elif [ $try -eq $nb ]
		then
			echo "> Congratulations! $try is the correct number!"
			end=true
		fi
	else 
		echo "> Please type a number"
	fi
done
