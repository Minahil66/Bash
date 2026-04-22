#!/usr/bin/env bash
lvl=$1
if [[ $lvl -eq 1 ]]; then
echo "0"
exit 0
fi
param=$#
declare -A lis
for ((i=2;i<=param;i++); do
n=${!i}
for ((j=1; j<lvl; j++)); do
multi=$(( n * j ))
if (( multi < lvl)); then
lis["$i, $j"]+=$multi
fi
done
done

