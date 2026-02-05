#!/bin/bash

echo "starting the batch process..."

# This loop will run 5 times
for i in {1..5}; do
    echo "Creating backup file number $i"
    touch "backup_$i.log"
done 

echo "Done! Let's check the file:"
ls -l backup_*.log

