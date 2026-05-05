#!/bin/bash
num=$1
steps=0
if (( num < 0 || num == 0 )); then
echo "Error: Only positive numbers are allowed"
exit 1
fi
while (( num != 1 )); do
if ((num % 2 == 0 )); then
num=$((num/2))
((steps++))
else
num=$(( num * 3 + 1 ))
((steps++))
fi
done
echo "$steps"

