#!/bin/bash
if [[ $# -eq 0 ]]; then
echo "there is_some_output"
exit 1
fi
if [[ $# -eq 3 ]]; then
    f=$1
    inpr=$2
    text="$3"
if [[ $inpr -le 0 ]]; then
    echo "there is_some_output"
    exit 1
    fi
else
    f="-e"  
    inpr=$1
    text="$2"
fi
if [[ "$f" == "-d" ]]; then
    # Count characters per rail
    declare -a rail_counts
    for ((i=0; i<inpr; i++)); do
        rail_counts[$i]=0
    done
    
    rails=0
    dir=1
    for ((i=0; i<${#text}; i++)); do
        ((rail_counts[rails]++))
        
        if [[ $rails -eq 0 ]]; then
            dir=1
        elif [[ $rails -eq $((inpr-1)) ]]; then
            dir=-1
        fi
        rails=$((rails + dir))  
    done
    
    # Split ciphertext into rails
    declare -a rails_array
    start=0
    for ((i=0; i<inpr; i++)); do
        count=${rail_counts[$i]}
        rails_array[$i]="${text:$start:$count}"
        start=$((start + count))
    done
    
    # Read in zigzag order
    declare -a rail_positions
    for ((i=0; i<inpr; i++)); do
        rail_positions[$i]=0
    done
    
    result=""
    rails=0
    dir=1
    for ((i=0; i<${#text}; i++)); do
        pos=${rail_positions[$rails]}
        result="${result}${rails_array[$rails]:$pos:1}"
        ((rail_positions[$rails]++))
        
        if [[ $rails -eq 0 ]]; then
            dir=1
        elif [[ $rails -eq $((inpr-1)) ]]; then
            dir=-1
        fi
        rails=$((rails + dir))
    done
    
    echo "$result"

else
    # ENCRYPTION
    declare -a rail_arr
    for ((i=0; i<inpr; i++)); do
        rail_arr[$i]=""
    done
    
    rails=0
    dir=1
    for ((i=0; i<${#text}; i++)); do
        char="${text:$i:1}"
        rail_arr[$rails]="${rail_arr[$rails]}$char"
        
        if [[ $rails -eq 0 ]]; then
            dir=1
        elif [[ $rails -eq $((inpr-1)) ]]; then
            dir=-1
        fi
        rails=$((rails + dir))
    done
    
    for ((i=0; i<inpr; i++)); do
        echo -n "${rail_arr[$i]}"
    done
    echo
fi
