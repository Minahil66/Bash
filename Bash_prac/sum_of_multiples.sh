#!/bin/bash
lvl=$1
if [[ $lvl -eq 1 ]]; then
echo "0"
exit 0
fi
param=$#
declare -A lis
sum=0
for ((i=2;i<=$param;i++)); do
n=${!i}
for ((j=1; j<$lvl; j++)); do
multi=$(( n * j ))
if (( multi < lvl)) && [[ -z "${lis[$multi]}" ]]; then
lis[$multi]=1
((sum += multi))
fi
done
done
echo "$sum"
