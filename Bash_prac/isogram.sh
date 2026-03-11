#!/usr/bin/env bash
n=$1
bin=()
action=()
bin=$(echo "obase=2; $n" | bc ) #basic calc
 while(( ${#bin}<5)); do
 bin="0$bin"
 done
 if [[ "${bin:4:1}" == "1" ]]; then 
 action+=("wink") 
 fi
 if [[ "${bin:3:1}" == "1" ]]; then 
 action+=("double blink") 
 fi
 if [[ "${bin:2:1}" == "1" ]]; then 
 action+=("close your eyes") 
 fi
 if [[ "${bin:1:1}" == "1" ]]; then 
 action+=("jump")
 fi
 if [[ "${bin:0:1}" == "1" ]]; then
    reversed=()
    for ((i=${#action[@]}-1; i>=0; i--)); do
        reversed+=("${action[i]}")
    done
    action=("${reversed[@]}")
fi
len=${#action[@]}
for ((i=0;i<len; i++)); do
echo -n "${action[i]}"
if (( i < len-1)); then
echo -n ","
fi
done
