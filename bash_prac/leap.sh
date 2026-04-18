#!/bin/bash
y=$1
if [[ $# -ne 1 ]] || [[ ! "$y" =~ ^[0-9]+$  ]]; then
echo "Usage: leap.sh <year>"
exit 1
fi
if (( y % 4 == 0  && y % 100 != 0 )) || (( y % 400 == 0)); then
echo "true"
exit 0
fi
echo "false"
