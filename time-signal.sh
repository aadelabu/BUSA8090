#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron

chime() {
 num=$1
 count=0
 while test $count -lt $num; do
   echo -e "\a"
   sleep 1 # sleep for one second
   count=$[$count+1]
 done
}


hour=$(date +%I)
minutes=$(date +%M) # minutes past the hour
minutes_count=0

if (($minutes < 30)) && (($minutes > 15)); then
  minutes_count=1
elif (($minutes < 45)) && (($minutes > 30)); then
  minutes_count=2
elif (($minutes < 60)) && (($minutes > 45)); then
  minutes_count=3
fi

chime $hour
sleep 3 # Pause for 3 seconds
chime $minutes_count
