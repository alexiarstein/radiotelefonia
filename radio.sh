#!/bin/bash
# Autora: Alexia Rivera Steinberg <alexiarstein@aol.com>
# https://github.com/alexiarstein
# GNU GPL 3.0 (See LICENSE)
# -------------------------------------------------------------

declare -A radio=(
    [a]="alpha"
    [b]="bravo"
    [c]="charlie"
    [d]="delta"
    [e]="echo"
    [f]="foxtrot"
    [g]="golf"
    [h]="hotel"
    [i]="india"
    [j]="juliet"
    [k]="kilo"
    [l]="lima"
    [m]="mike"
    [n]="november"
    [o]="oscar"
    [p]="papa"
    [q]="quebec"
    [r]="romeo"
    [s]="sierra"
    [t]="tango"
    [u]="uniform"
    [v]="victor"
    [w]="whiskey"
    [x]="xray"
    [y]="yankee"
    [z]="zulu"
)

argumento="$1"

for (( i=0; i<${#argumento}; i++ )); do
    char="${argumento:$i:1}"
    otra="${radio[$char]}"
    if [[ -z "$otra" ]]; then
        otra="$char"
    fi
    printf "%s " "$otra"
done
echo ""
