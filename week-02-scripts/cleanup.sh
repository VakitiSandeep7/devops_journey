#!/bin/bash

echo "Starting cleanup of backup logs..."

# We use the wildcard *.log to find all log files 
for FILE in *.log; do
    echo "Deleting $FILE..."
    rm $FILE
done

echo "Cleanup complete! current folder ststus:"
ls
