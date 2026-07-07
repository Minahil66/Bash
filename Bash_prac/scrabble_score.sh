#!/bin/ bash

value=$1
output=0
length=${#value}
for((i=0;i<length;i++)); do
char=${value:$i:1}
if [[ "$char" =~ ^[aeioulnrstAEIOULNRST] ]]; then
(( output+= 1 ))
elif [[ "$char " =~ ^[dgDG] ]]; then
(( output += 2 ))
elif [[ "$char" =~ ^[bcmpBCPM] ]]; then
(( output += 3 ))
elif [[ "$char" =~ ^[fhvwyFHVWY] ]]; then
(( output += 4 ))
elif [[ "$char" =~ ^[Kk] ]]; then
((output += 5 ))
elif [[ "$char" =~ ^[jxJX] ]]; then
(( output += 8 ))
elif [[ "$char" =~ ^[qzQZ] ]];then
(( output += 10 ))
else 
(( output += 0 ))
fi
done
echo "$output"
