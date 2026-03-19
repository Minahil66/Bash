#!/bin/bash
n="$1"
a=$2
b=$3
c=$4
res=""
compare() {
[[ $(echo "$1" | bc -l) == 1 ]]
}
if compare "$a + $b <= $c" ||  compare "$a + $c <= $b" || compare "$b + $c <= $a"; then
echo "false" && exit 0
fi
if compare "$a == 0 && $b == 0 && $c == 0"; then
echo "false" && exit 0
fi
compare "$a == $b && $a == $c" && res="equilateral" || 
{ compare "$a == $b || $a == $c || $b == $c" && res="isosceles" || res="scalene"; }
if [[ "$res" == "equilateral" && "$n" == "isosceles" ]]; then
echo "true" && exit 0
fi
[[ "$res" == "$n"  ]] && echo "true" || echo "false"
