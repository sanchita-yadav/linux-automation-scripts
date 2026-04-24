#!/bin/bash

echo "Disk Usage Report"
echo "-----------------"

df -h

echo ""

echo "Top 5 largest directories in current path:"
du -h . | sort -rh | head -5
