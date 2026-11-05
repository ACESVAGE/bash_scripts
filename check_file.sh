#!/bin/bash
FILE="${1:-/etc/passwd}"
if [ -f "$FILE" ] && [ -r "$FILE"]; then
	echo "File $FILE exists and is readable"
	echo "Line count: $(wc -l < $FILE)"
else
	echo "File $FILE is missing or not readable."
	exit 1
fi


