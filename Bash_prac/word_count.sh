#!/bin/bash
string="$1"
#new=$(echo "$string" |tr '\n,.' ' ' |  tr -d '[:punct:]' )
new=$(echo "$string" |tr '\n,.' ' ' | sed "s/[^a-zA-Z0-9']/ /g" | tr -s ' ')
new="${new,,}"
read  -ra arr <<< "$new"
#clean_arr=()
#for word in "${arr[@]}"; do
  #  clean=$(echo "$word" | sed "s/^'//; s/'$//")
  #  [[ -n "$clean" ]] && clean_arr+=("$clean")
#done
declare -A count #associative array
for i in "${clean_arr[@]}"; do
((count[$i]++))
done
for i in "${!count[@]}"; do
echo "$i: ${count[$i]}"
done
