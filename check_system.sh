#!/bin/bash
echo "--- DevOps System Check ---"
# We use $(...) to capture the output of the command into a variable
LINES=$(wc -l < inventory.txt)

if [ $LINES -gt 5 ]; then
    echo "Status: WARNING - Inventory is getting full ($LINES items)!"
else
    echo "Status: OK - plenty of space left ($LINES items)!"
fi
echo "---------------------------"
