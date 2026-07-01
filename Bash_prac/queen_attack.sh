#!/bin/bash
white="$2"
black="$4"
IFS=',' read -r b1 b2 <<< "$black"
IFS=',' read -r w1 w2 <<< "$white"
if (( b1 < 0 || w1 < 0 )); then
echo "row not positive"
exit 1
elif (( b1 > 7 || w1 > 7 )); then 
echo "row not on board"
exit 1
elif (( b2 < 0 || w2 < 0 )); then
echo "column not positive"
exit 1
elif (( b2 > 7 || w2 > 7 )); then
echo "column not on board"
exit 1
elif (( b1 == w1 && b2 == w2 )); then
echo "same position"
exit 1
fi
if (( w2 == b2 || w1 == b1 )); then
echo "true"
exit 0
fi
rows=$(( w1 - b1 ))  && rows=${rows#-}
cols=$(( w2 - b2 )) && cols=${cols#-}
if (( rows == cols )); then
echo "true"
else
echo "false"
fi
