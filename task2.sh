#!/bin/bash

grep -l "sample" dataset1/* | xargs grep -o "CSC510" | uniq -c | \
grep -E "^\s*([3-9])|([1-9][0-9]{1,}) d" | \
gawk '{count = $1; file = $2; sub(/:CSC510$/, "", file); "stat -c%s " file | getline size; print count, size, file; }' | \
sort -k1,1nr -k2,2nr | sed 's/file_/filtered_/' 
