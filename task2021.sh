#!/usr/bin/env bash

set -e

a=pozzzitif1980   

b=$(ps -eo pcpu | sed 1d |  awk '{s+=$0}END{print s "%"}')
	
c=$(df -BM | awk '$NF=="/"{printf $4"\n"}')
	
d=$(date +%Y-%m-%d\ \%H:%M:%S)

jq -n --arg a "$a" '{author: $a}' 
jq -n --arg b "$b" '{CPU: $b}' 
jq -n --arg c "$c" '{free_disk_space: $c}' 
jq -n --arg d "$d" '{generated_date: $d}'  

