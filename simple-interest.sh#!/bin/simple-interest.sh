#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on user input

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    
    # Formula: (P * R * T) / 100
    echo "scale=2; ($principal * $rate * $time) / 100" | bc
}

# Display header
echo "========================================="
echo "     SIMPLE INTEREST CALCULATOR"
echo "========================================="
echo ""

# Get user input
read -p "Enter Principal Amount (P): " principal
read -p "Enter Rate of Interest (R) per annum: " rate
read -p "Enter Time (T) in years: " time

# Validate input
if [[ ! $principal =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   [[ ! $rate =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   [[ ! $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo ""
    echo "Error: Please enter valid numeric values."
    exit 1
fi

# Calculate interest
interest=$(calculate_simple_interest $principal $rate $time)

# Display results
echo ""
echo "========================================="
echo "                 RESULTS"
echo "========================================="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "-----------------------------------------"
echo "Simple Interest: $interest"
echo "========================================="

# Exit successfully
exit 0
