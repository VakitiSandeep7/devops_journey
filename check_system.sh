#!/bin/bash
echo "--- DevOps Multi-Inventory Check ---"
# This loop only grabs files stsrting with 'inventory'
for file in inventory*.txt; do
    # Count lines of the CURRENT file in the loop
    LINES=$(wc -l < "$file")

    if [ $LINES -gt 5 ]; then
        echo "Status: WARNING - $file is full ($LINES items)!"
    else
        echo "Status: OK - $file looks good ($LINES items)."
    fi
done
echo "---------------------------"
