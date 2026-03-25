#!/bin/bash
colors=(black brown red orange yellow green blue violet grey white)
col=$2
if [[ $1 == "code" ]]; then
case "$col" in
black) echo 0;;
brown) echo 1;;
red) echo 2;;
orange) echo 3;;
yellow) echo 4;;
green) echo 5;;
blue) echo 6;;
violet) echo 7;;
grey) echo 8;;
white) echo 9;;
esac
elif [[ $1 == "colors" ]]; then
    echo ${#colors[@]}  # prints 10
    for i in "${colors[@]}"; do # @ for distinct elemnents
    echo "$i"
    done
else
echo error
fi
