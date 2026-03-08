#!/bin/bash
n="$*"
n="$(echo -n "$n" | sed 's/[[:space:]]*$//')"
if [[ -z "${n//[[:space:]]/}" ]]; then
    echo "Fine. Be that way!"
    exit 0
fi
if [[ "$n" =~ [A-Z] ]] && [[ ! "$n" =~ [a-z] ]]; then
if [[ "$n" =~ \?$ ]]; then
echo "Calm down, I know what I'm doing!"
else
echo "Whoa, chill out!"
fi
elif [[ "$n" =~ \?$ ]]; then
echo "Sure."
else
echo "Whatever."
fi
