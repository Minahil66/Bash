#!/bin/ bash

num="$1"
num=$( echo "$num" | tr -d './*\-+() ' )
len=${#num}
if ((  len < 10  )); then
echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
exit 1
fi

if (( len == 11 )); then
if [[ "${num:0:1}" -ne 1 ]]; then
echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
exit 1
fi
num="${num:1}"
fi
len2=${#num}

if (( len2 > 10 )); then
echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
exit 1
fi

if  [[ ! "${num:0:1}" =~ ^[2-9] || ! "${num:3:1}" =~ ^[2-9] ]]; then
echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
exit 1
fi

echo "$num"
