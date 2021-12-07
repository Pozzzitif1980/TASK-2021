#!/usr/bin/env bash

set -e

echo 'author - pozzzzitif1980'

ps -eo pcpu | sed 1d |  awk '{s+=$0}END{print "cpu:" s "%"}'
 
df -h | awk '$NF=="/"{printf "free_disk_space - " $4}'

echo ""

D=$(date +%Y-%m-%d)
T=$(date +%H:%M:%S)
	
echo  "generated_date:""$D" "$T"

