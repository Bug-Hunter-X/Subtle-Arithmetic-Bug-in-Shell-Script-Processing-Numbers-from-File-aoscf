#!/bin/bash

# This script attempts to process a file containing numbers, but has a subtle bug.

while IFS= read -r line; do
  num=$(echo "$line" | tr -d \n)
  (( sum += num ))
  echo "Current sum: $sum"
done < numbers.txt

# Print the final sum
echo "Final sum: $sum"