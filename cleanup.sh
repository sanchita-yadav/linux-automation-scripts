#!/bin/bash

echo "Cleanup Script"
echo "--------------"

TARGET_DIR="$HOME/Desktop/test_cleanup"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Directory not found: $TARGET_DIR"
    exit 1
fi

echo "Deleting .log files older than 7 days in $TARGET_DIR..."

find "$TARGET_DIR" -type f -name "*.log" -mtime +7 -exec rm -i {} \;

echo "Cleanup complete."
