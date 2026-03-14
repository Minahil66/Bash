#!/bin/bash
l1=$(echo "$1" | tr -d '[]' | tr ',' ' ')
l2=$(echo "$2" | tr -d '[]' | tr ',' ' ')
lis1=($l1)
lis2=($l2)
str1="${lis1[*]}"
str2="${lis2[*]}"
len1=${#lis1[@]}
len2=${#lis2[@]}
if [[ "$str1" == "$str2" ]]; then
echo "equal"
exit 0
fi

if [[ $len1 -eq 0 ]]; then
echo "sublist"
exit 0
elif [[ $len2 -eq 0 ]]; then
echo "superlist"
exit 0
fi
if [[ "$str2" == *"$str1"* ]] && [[ $len1 -lt $len2 ]]; then #This reads as, str2 contains str1 anywhere inside it
echo "sublist"
elif [[ "$str1" == *"$str2"* ]] && [[ $len1 -gt $len2 ]]; then
echo "superlist"
else
echo "unequal"
fi
