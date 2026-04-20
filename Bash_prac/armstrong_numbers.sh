#!/usr/bin/env bash
num=$1
mapfile -t digits < <(echo "$num" | fold -w1)
len=${#digits[@]}
if (( len == 1)); then
echo "true"
exit 0;
fi
sum=0
for i in "${digits[@]}"; do
curr=$( echo "$i ^ $len" | bc )
sum=$((sum+curr))
done
if (( num == sum)); then
echo "true"
else
echo "false"
fi

