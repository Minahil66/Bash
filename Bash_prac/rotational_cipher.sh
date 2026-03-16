#!/usr/bin/env bash
c=$1
k=$2
len=${#c}
mess=()
for((i=0;i<len;i++)); do
char=${c:i:1}
if [[ "$char" =~ [A-Z] ]]; then
ascii=$(printf "%d" "'$char")
ascii=$((ascii - 65))
new=$(( (ascii + k)%26 ))
new=$((new + 65))
mess[$i]=$(printf "\\$(printf '%03o' "$new")")
elif [[ "$char" =~ [a-z] ]]; then
ascii=$(printf "%d" "'$char")
ascii=$((ascii - 97))
new=$(( (ascii + k) % 26 ))
new=$((new + 97))
mess[$i]=$(printf "\\$(printf '%03o' "$new")")
else
mess[$i]=$char
fi
done
printf "%s" "${mess[@]}" 
