#!/usr/bin/env bash
n=$1
bin=()
actions=()
bin=$(echo "obase=2; $n" | bc )
 while(( ${#bin}<6)); do
 bin="0$bin"
 done
 if [[ "${bin:4:1}" == "1" ]]; then 
 echo "wink" 
 action+=("wink") 
 fi
 if [[ "${bin:3:1}" == "1" ]]; then 
 echo "double blink" 
 action+=("double blink") 
 fi
 if [[ "${bin:2:1}" == "1" ]]; then 
 echo "close your eyes" 
 actions +=("close your eyes") 
 fi
 if [[ "${bin:1:1}" == "1" ]]; then 
 echo "jump" 
 actions+=("jump")
 if [[ "${bin:0:1}" == "1" ]]; then
    reversed=()
    for ((i=${#actions[@]}-1; i>=0; i--)); do
        reversed+=("${actions[i]}")
    done
    actions=("${reversed[@]}")
fi

 
