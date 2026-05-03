#!/bin/bash
string="$1"
declare -A check
for((i=0;i<${#string}; i++)); do
char1="${string:$i:1}"
if [[ "$char1" =~ [A-Za-z] ]]; then
char1="${char1,,}"
check[$char1]=1
fi
done
if [[ "${#check[@]}" -eq 26 ]]; then
echo "true"
else
echo "false"
fi
