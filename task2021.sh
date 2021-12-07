#!/usr/bin/env bash

set -e

echo 'author - pozzzzitif1980'
echo $(ps -eo pcpu | sed 1d) | tr ' ' \\n | awk '{s+=$0}END{print "cpu:" s "%"}'
 

free= df -h | awk '$NF=="/"{printf "free_disk_space: %d/%dGB (%s)\n", $3,$2,$5}'


D=$(date  +%Y-%m-%d)
T=$(date +%H:%M:%S)
echo  "generated_date:"  "$D" "$T"


