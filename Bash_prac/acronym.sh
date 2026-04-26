#!/bin/bash
#oneliner
#acr=$(echo "$text" | grep -o '\b\w' | tr -d '\n')
#acr="${acr^^}"
#echo"$acr"

text="$1"
acr=""
text="${text//-/ }"
text=$(echo "$text" | tr '_*' ' ') 
for word in $text; do
acr+="${word:0:1}"
done
acr="${acr^^}"
echo "$acr"
