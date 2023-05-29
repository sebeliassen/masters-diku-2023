#!/bin/bash

# Remove output.txt if it exists to start fresh
rm -f output.txt

# Loop through all directories in the current folder
for dir in */; do
  # Loop through all .txt files in the directory
  for file in "$dir"*.txt; do
    # Get the filename without the .txt extension
    filename=$(basename "$file" .txt)
    filename="${filename%_}"
    # Get the first line of the file
    first_line=$(head -n 1 "$file")
    # Append the formatted line to output.txt
    echo "$filename: $first_line" >> output.txt
  done
done
