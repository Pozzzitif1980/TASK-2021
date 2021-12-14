#!/usr/bin/env bash

set -e

a=pozzzitif1980   

b=$(ps -eo pcpu | sed 1d |  awk '{s+=$0}END{print s "%"}')
	
c=$(df -BM | awk '$NF=="/"{printf $4"\n"}')
	
d=$(date +%Y-%m-%d\ \%H:%M:%S)

jq -n --arg a "$a" --arg b "$b" --arg c "$c" --arg d "$d" '{author: $a, CPU: $b, free_disk_space: $c, generated_date: $d }' 
