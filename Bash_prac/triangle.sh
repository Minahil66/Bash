#!/bin/bash
n=$1
res=""
compare() {
[[ $(echo "$1" | bc -l) == 1 ]] #bc for float
}
if compare "$2 + $3 <= $4" ||  compare "$2 + $4 <= $3" || compare "$3 + $4 <= $2"; then
echo "false" && exit 0
fi
if compare "$2 == 0 && $3 == 0 && $4 == 0"; then
echo "false" && exit 0
fi
compare "$2 == $3 && $2 == $4" && res="equilateral" || 
{ compare "$2 == $3 || $2 == $4 || $3 == $4" && res="isosceles" || res="scalene"; }
if [[ "$res" == "equilateral" && "$n" == "isosceles" ]]; then
echo "true" && exit 0
fi
[[ "$res" == "$n"  ]] && echo "true" || echo "false"
