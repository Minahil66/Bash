#!/bin/bash
planet=$1
sec=$2
ans=0
case "$planet" in
Earth) ans=$(echo " $sec / 31557600 " | bc -l );;
Mercury) ans=$(echo " $sec / 7600542 " | bc -l ) ;;
Venus) ans=$(echo " $sec / 19414262 " | bc -l );;
Mars) ans=$(echo " $sec /  59354976 " | bc -l );;
Jupiter) ans=$(echo " $sec /  374335665 " | bc -l );;
Saturn) ans=$(echo "$sec / 929610157" | bc -l );;
Uranus) ans=$(echo " $sec / 2652201745" | bc -l );;
Neptune) ans=$(echo "$sec / 5202430203 " | bc -l);;
*) echo "not a planet " && exit 1;
esac
rounded=$(printf "%.2f" "$ans")
echo "$rounded"
