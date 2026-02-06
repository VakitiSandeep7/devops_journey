#!/bin/bash

# 1.Define the function
check_disk() {
    USAGE=$(df -h / | grep / | awk '{print $5}' | sed 's/%//')


    if [ "$USAGE" -gt 10 ]; then
        echo "🚨 ALERT: Disk at $USAGE%"
    else
        echo "✅ HEALTHY: Disk at $USAGE%"
    fi
}

# 2. Main Logic
echo "Starting System Audit..."
check_disk  # Calling the function
echo "Audit Complete."
