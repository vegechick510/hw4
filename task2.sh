#!/bin/bash

# list the files containing the word “sample” and at least 3 occurrences of the word “CSC510”
grep -c "CSC510" dataset1/*| grep -E ":[3-9]\d*|[1-9]\d{2,}$" | uniq -c | sort -n -r -t':' -k2 | sed 's/file_/filtered_/' | cut -d: -f1