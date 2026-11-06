#!/bin/bash
#A count down timer!

COUNT=${1:-5}
while [ $COUNT -gt 0 ]; do
   echo "Countdown: $COUNT"
   COUNT=$((COUNT - 1))
   sleep 1
done

echo  "Done!"

