#!/bin/bash
name=$1
n=$2
if ((n < 1 )) || (( n > 999)); then
echo "Error"
exit 0
fi
lastd=$(( n % 100))
if ((lastd == 11)) || ((lastd == 12)) || ((lastd == 13)); then
echo -n "$name, you are the $n"
echo  "th customer we serve today. Thank you!"
exit 0
fi
last=$(( n % 10 ))
if ((last == 1)); then
echo -n "$name, you are the $n"
echo  "st customer we serve today. Thank you!"
fi
if (( last == 2 )); then
echo -n "$name, you are the $n"
echo  "nd customer we serve today. Thank you!"
fi
if ((last == 3)); then
echo -n "$name, you are the $n"
echo  "rd customer we serve today. Thank you!"
fi
if ((last != 1)) && ((last != 2)) && ((last !=3 )); then
echo -n "$name, you are the $n"
echo  "th customer we serve today. Thank you!"
fi
