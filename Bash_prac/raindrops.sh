#!/bin/bash

n=$1
if [[ $((n % 3)) -eq 0 ]]; then
echo -n Pling
fi
if [[ $((n % 5)) -eq 0 ]]; then
echo -n Plang
fi
if [[ $((n % 7)) -eq 0 ]]; then
echo -n Plong
fi
if ((n % 7 != 0)) && ((n % 5 != 0)) && ((n % 3 != 0)); then
echo $n
fi
