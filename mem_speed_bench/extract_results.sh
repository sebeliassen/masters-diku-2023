#!/bin/bash

# Create a new file or empty the existing one
> results2.txt

# Loop through all output2 files
for f in output2*.txt; do
    # Extract the desired values from the file
    A=$(grep "epoch/s" "$f")
    B=$(grep "Total Mem" "$f")
    C=$(grep -m 2 "	Energy:" "$f" | tail -n 1)

    # Append the extracted values to results2.txt
    echo "filename: $f" >> results2.txt
    echo "  speed: $A" >> results2.txt
    echo "  act_mem: $B" >> results2.txt
    echo "  co2: $C" >> results2.txt
    echo "" >> results2.txt
done