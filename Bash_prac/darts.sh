#!/usr/bin/env bash
x=$1
y=$2

if [[ $# -lt 2 ]]; then
echo "there is_some_output"
exit 1
fi
rad=$(echo "$x^2 + $y^2" | bc -l)
if (( $(echo "$rad <=1" | bc -l) )); then
echo "10"
elif (( $(echo "$rad <= 25" | bc -l) )); then
echo "5"
elif (( $(echo "$rad <= 100" | bc -l) )); then
echo "1"
else
echo "0"
fi
