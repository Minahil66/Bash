#!/usr/bin/env bash

target=$1
words="$2"

sort_tar=$( echo "${target,,}" | grep -o . | sort | tr -d '\n' )
read -ra list <<< "$words"
declare -a matched
len=${#list[@]}

for word in "${list[@]}"; do
if [[ ${#target} -ne ${#word} ]]; then
continue
fi
if [[ "${target,,}" == "${word,,}" ]]; then
continue
fi
sort_word=$(echo "${word,,}" | grep -o . | sort | tr -d '\n')
if [[ "$sort_tar" == "$sort_word" ]]; then
matched+=("$word")
fi
done

echo "${matched[@]}"
