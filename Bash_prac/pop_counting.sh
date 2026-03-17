#!/bin/bash
n=$1
bin=""
count=0
if (( n == 0 )); then
echo "0"
exit 0
fi
while(( n > 0 )); do
last=$(( n % 2 ))
if (( last == 1 )); then
((count++))
fi
bin="$last$bin"
n=$(( n / 2 ))
done
echo "$count"
