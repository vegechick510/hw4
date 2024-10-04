#!/bin/bash

grep -E "^[0-9]+,[0-9]+,2,.*,S\s$" /workspaces/hw4/titanic.csv | sed 's/female/F/' | sed 's/male/M/' | gawk -F, '{sum += $7; count++} END {print sum/count}'