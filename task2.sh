#!/bin/bash

grep -l "sample" dataset1/* | xargs grep -o "CSC510" | uniq -c | grep -E "^\s*[3-9]\d*|[1-9]\d{2,} d" | \
gawk '{lines[NR] = $0} END {for (i = asort(lines); i >= 1; i--) print lines[i]}' | \
sed 's/file_/filtered_/' | cut -d: -f1 | cut -d' ' -f8
