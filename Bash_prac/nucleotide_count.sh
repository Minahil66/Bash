
#!/bin/bash
n="$1"
len=${#n}
A=0
C=0
G=0
T=0
for((i=0;i<len;i++)); do
if [[ "${n:i:1}" == "A" ]]; then
((A++)) 
elif [[ "${n:i:1}" == "C" ]]; then
((C++))
elif [[ "${n:i:1}" == "G" ]]; then
((G++))
elif [[ "${n:i:1}" == "T" ]]; then
((T++))
else
echo "Invalid nucleotide in strand"
exit 1
fi
done
echo "A: $A"
echo "C: $C
echo "G: $G"
echo "T: $T"

#one-liner version

 #!/bin/ bash
n="$1"
if [[ "$n" =~ [^ACGT] ]] && [[ -n "$n" ]]; then  #if any of the characters are NOT ACGT AND the stirng is -Not empty then error/ if string empty we move on
    echo "Invalid nucleotide in strand"
    exit 1
    fi
for base in A C G T; do
    count=$(echo "$n" | grep -o "$base" | wc -l)
    echo "$base: $count"
done
