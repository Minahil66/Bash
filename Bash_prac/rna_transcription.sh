#!/usr/bin/env bash

#gcta -> cgau
n=$1
len=${#n}
for((i=0; i<$len;i++)); do
char=${n:i:1}
if [[ "$char" != "G" && "$char" != "C" && "$char" != "T" && "$char" != "A" ]]; then
echo "Invalid nucleotide detected."
exit 1
fi
done
for((i=0; i<$len;i++)); do
char2=${n:i:1}
if [[ "$char2" == "G" ]]; then #square brackerts for STRING COMPARISON, round for math mode
echo -n "C"
elif [[ "$char2" == "C" ]]; then
echo -n "G"
elif [[ "$char2" == "T" ]]; then
echo -n "A"
elif [[ "$char2" == "A" ]]; then
echo -n "U"
else
echo "error"
fi
done
