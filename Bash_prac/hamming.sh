#!/bin/bash
if [[ $# -lt 2 ]]; then
echo "Usage: hamming.sh <string1> <string2>"
exit 1
fi
s1=$1
s2=$2
len1=${#s1}
len2=${#s2}
count=0
if [[ $len1 == "$len2" ]]; then
for((i=0;i<len1;i++));do
if [[ "${s1:$i:1}" != "${s2:$i:1}" ]]; then
(( count++ ))
fi
done
echo $count
else
echo "strands must be of equal length"
exit 1
fi
