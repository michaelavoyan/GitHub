#!/bin/bash

# simple-interest.sh
# A basic shell script to calculate simple interest

echo "Simple Interest Calculator"

# Prompt user for input
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (per annum): " rate
read -p "Enter Time (in years): " time

# Validate that inputs are numbers
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "Simple Interest = $interest"
