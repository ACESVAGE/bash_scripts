#!/bin/bash
#A simple file checker program
read -p "Enter the name of the file: " FILENAME

if [[ -f "$FILENAME"]]; then
	echo "It is a file"
	ls -la "$FILENAME"
elif [[ -d "$FILENAME"]]; then
	echo "'$FILENAME' is a directory."
else
	echo "'$FILENAME' does not exit"
	exit 1
fi
echo "Script finished with exit code $?"


