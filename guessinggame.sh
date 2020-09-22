#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "You are right!"
		echo " List of items:"
		for f in $(ls)
		do
			echo "  - $f and "
		done
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "Looks high... Next guess :"
			guess_filenum
		else
			echo "Looks low... Next guess :"
			guess_filenum
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory and press Enter :"
guess_filenum
