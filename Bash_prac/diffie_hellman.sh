#!/bin/ bash

if [[ $1 == "privateKey" ]]; then
p=$2
key=$(( (RANDOM % (p - 2)) + 2 ))
echo "$key"
exit 0
elif [[ $1 == "publicKey" ]]; then
p=$2 && g=$3 && private=$4
A=$(echo "$g ^ $private % $p" | bc )
echo "$A"
exit 0
else
p=$2 && public=$3 && private=$4
B=$(echo " $public ^ $private  % $p" | bc )
echo "$B"
exit 0
fi
