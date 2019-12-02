#!/bin/bash
date1=$(date +'%d%h%Y')
#echo "$date1"
echo >> ~/report-$date1 
echo "---------------------------------------------------------------------------------------------------" >> ~/report-$date1
currentdatetime=$(date '+%Y-%m-%d %H:%M:%S')
echo "This Data has been captured at $currentdatetime" >> ~/report-$date1
echo "---------------------------------------------------------------------------------------------------" >> ~/report-$date1
echo "Below Top 5 process are sorted by highest CPU usage wise" >> ~/report-$date1
ps -eo uid,pid,ppid,stime,cmd,%cpu,%mem --sort=-%cpu |head -6 >> ~/report-$date1
echo >> ~/report-$date1
echo "Below Top 5 process are sorted by highest MEM usage wise" >> ~/report-$date1
ps -eo uid,pid,ppid,stime,cmd,%mem,%cpu --sort=-%mem |head -6 >> ~/report-$date1
