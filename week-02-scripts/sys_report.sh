#!/bin/bash

# Define a variable for the user
USER_NAME="Sandy"

echo "------------------------------------------"
echo "DEVOPS SYSTEM REPORT FOR: $USER_NAME"
echo "DATE: $(date)"
echo "------------------------------------------"

echo "CHECKING SYSTEM UPTIME:"
uptime

echo ""
echo "CHECKING DISK USAGE:"
df -h | grep '^/dev/'

echo "------------------------------------------"
echo "Report Complete!"
