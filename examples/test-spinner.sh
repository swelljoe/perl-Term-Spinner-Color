#!/bin/sh

printf "Doot doot                   "
/usr/bin/perl spinner &
PID=$!
sleep 5
kill $PID
printf "DONE!"
echo
