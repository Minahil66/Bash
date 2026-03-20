#!/usr/bin/env bash
inpr=$1
text="$2"
declare -a rail_arr
for ((i=0;i<inpr;i++));do
rail_arr[$i]=""
done
rails=0
dir=1
for((i=0;i<${#text};i++)); do
char=${text:$i:1}
rail_arr[$rails]="${rail_arr[$rails]}$char"
if [[ $rails -eq 0 ]]; then
dir=1
elif [[ $rails -eq $((inpr-1)) ]]; then
dir=-1
fi
rails=$((rails+dir))
done
for((i=0;i<inpr;i++)); do
echo -n "${rail_arr[$i]}"
done

