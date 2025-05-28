#!/bin/bash
# Author: Melik Cetin
# Description: This script finds and deletes all .gz files under /var/log, excluding any files in directories with "private" in the path.

# Find all .gz files under /var/log, excluding anything with "private" in the path
files=$(find /var/log -type f  -name "*.gz"  ! -path "*private*")

# If no files found, exit
if [ -z "$files" ]; then
        echo "No .gz files found."
        exit 0

fi

# Show files
echo "The following .gz files will be deleted."
echo "$files"
echo

# Ask for confirmation
read -p "Do you want to delete all of these files? (y/n): " answer

if [[ "$answer" == "y" ]]; then
        echo "$files" | xargs rm -v
        echo "Files deleted."
else
        echo "Aborted. No files deleted."
fi
