#!/bin/bash

# --- 1. FUNCTIONS ---

check_disk() {
    echo "Checking Disk Space..."
    df -h | grep '^/dev/'
}

check_logs() {
    echo "Counting Disk Space..."
    df -h | grep '^/dev/'
}

check_logs() {
    echo "Counting Log Files..."
    # Counts how many ,log files exist in the current folder
    LOG_COUNT=$(ls *.log 2>/dev/null | wc -l)
    echo "Found $LOG_COUNT log files."
}

system_uptime() {
    echo "System Uptime:"
    uptime -p
}

# --- 2. MAIN LOGIC ---

echo "=========================================="
echo "      DEVOPS MASTER AUDIT STARTING        "
echo "=========================================="

system_uptime
echo ""
check_disk
echo ""
check_logs

echo "=========================================="
echo "            AUDIT COMPLETE                "
