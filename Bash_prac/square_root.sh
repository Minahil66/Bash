#!/bin/bash

num=$1
sqroot=$(echo "sqrt($num)" | bc -l | awk '{printf "%.0f",$0 }')
echo "$sqroot"
