#!/bin/bash
num=$1
if [[ "$num" == "total" ]]; then
t=$(echo "2^64-1" | bc)
echo "$t"
exit 0
fi
if [[ $num -lt 1 || $num -gt 64 ]]; then
echo "Error: invalid input"
exit 1
else
n=$(($num-1))
echo "2^$n" | bc
fi
