#!bin/bash

# Define the function
check_status() {
     echo "--- System Report Generated on $(date) ---"
     uptime
     df -h | grep '^/dev/'
     echo "------------------------------------------"
}

# Now we "call"the function to make it run
echo "Starting the first check..."
check_status

echo "waiting 2 seconds..."
sleep 2

echo "Starting the second check..."
check_status
