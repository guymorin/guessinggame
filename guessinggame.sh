#!bin/bash
# guessinggame.sh
nb=$(ls|wc -l)
clear
function again {
	echo "> Try to guess again"
}
while [ -z $end ]
do
	read -p "Guess the number of files in the current directory:" try
	if [ $try -gt $nb ]
	then
		echo "> Too high!"
		again
	elif [ $try -lt $nb ]
	then
		echo "> Too low!"
		again
	elif [ $try -eq $nb ]
	then
		echo "> Congratulations! $try is the correct number!"
		end=true
	fi
done
