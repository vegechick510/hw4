#!/bin/bash

# grep -E "^[0-9]+,[0-9]+,2,.*,S\s$" /workspaces/hw4/titanic.csv | sed 's/female/F/' | sed 's/male/M/' | gawk -F, '{sum += $7; count++} END {print sum/count}'

gawk -F, 'NR > 1 && $3 == 2 && $13 ~ /S/' /workspaces/hw4/titanic.csv | \
sed 's/female/F/' | sed 's/male/M/' | \
gawk -F, '$7 != "" {sum += $7; count++} END {if (count > 0) print sum/count}'
