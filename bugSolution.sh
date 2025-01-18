#!/bin/bash

# Improved script to handle potential errors and whitespace better

while IFS= read -r line; do
  # Remove leading/trailing whitespace using parameter expansion
  num=${line##* }  
  num=${num%% *}
  #Check if num is a number
  if [[ ! $num =~ ^[0-9]+$ ]]; then
      echo "Error: Invalid number found '$line' skipping..."
      continue
  fi
  (( sum += num ))
  echo "Current sum: $sum"
done < numbers.txt

echo "Final sum: $sum"