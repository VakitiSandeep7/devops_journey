#!/bin/bash

# Get the current disk usage percentage (number only)
# This command pulls the percentage from 'df' and strips the '%' sign
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Scanning system... Current Disk Usage is: $USAGE%"

# Logic: If usage is greater than 10, give a warning.
# (Note: -gt stands for 'Greater Than')
if [ "$USAGE" -gt 10 ]; then
    echo "🚨 WARNING: Disk space is getting tight!"
    echo "Action required: Clean up log files."
else
    echo "✅ HEALTHY: Disk space is well within limits."
fi
