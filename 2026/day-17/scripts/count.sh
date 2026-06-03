#!/bin/bash

# 1. Check if a parameter was actually provided
if [ -z "$1" ]; then
    echo "Error: Please provide a number."
    echo "Usage: $0 <number>"
    exit 1
fi

# 2. Assign the first parameter ($1) to a variable
target=$1
counter=1

# 3. Loop until the counter exceeds the target number
while [ $counter -le $target ]
do
    echo "Count: $counter"

    # Increment the counter by 1
    counter=$((counter + 1))
done