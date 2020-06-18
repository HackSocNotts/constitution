#! /bin/bash

#get misspellt words

errors=$(detex main.tex | aspell --lang="en_GB" list)


allowed_words+=("HACKSOC" "ITEMSEP" "HACKNOTTS" "CYBER" "CYBERSECURITY" "HACKATHON" "HACKATHONS" "CTF" "SIG" "SU" "INCLUSIVITY" "TOPSEP" "SIGS" "NOTTS" "EDI" "AGM" "EGM" "HACKSOC'S" "INSPIREWIT" "ADVISOR" "SUPERORDINATE" "BYELAW" )

err=0

for sp in $errors; do
    spu=$(echo "$sp" | tr '[:lower:]' '[:upper:]')
    if [[ ! " ${allowed_words[@]} " =~ " ${spu} " ]]; then
        # echo suggestions
        echo "$sp" | aspell --lang="en_GB" -a | tail -n 2
        err=1
    fi
done

exit $err
