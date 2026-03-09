#!/usr/bin/env bash
n="$*"
len=${#n} # length of string
flag=false
seen=""
if [[ -z "${n//}" ]]; then #or "${n//[[:space:]]/}"
echo "true"
exit 0
fi
for((i=0;i<len;i++)); do
char="${n:i:1}"
if [[ "${n:$i:1}" == "-" ]] || [[ "${n:i:1}" == " " ]]; then
continue
fi
char_lower="${char,,}" #lower the character (case) ^^ 4 upper
 if [[ "$seen" == *"$char_lower"* ]]; then #check if char appears anywhere in the seen
 flag=true
 break 
 fi
 seen+="$char_lower" 
 done
 if [[ $flag == true ]]; then
 echo "false"
 else 
 echo "true"
 fi
