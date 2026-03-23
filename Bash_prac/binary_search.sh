#!/bin/bash
search=$1
shift
input=("$@") 
l=0 && r=$((${#input[@]}-1))
while(( l <= r)); do
mid=$(( (l + r) / 2 )) && mid_val=${input[$mid]}
if(( search == mid_val )); then
echo "$mid"
exit 0
elif (( search < mid_val )); then
r=$((mid -1))
elif (( search > mid_val )); then
l=$((mid + 1))
fi
done
echo "-1"
