
#!/bin/bash
# This script calculates simple interest given principal,
# annual rate of interest and time period in years.
# Do not use this in production. Sample purpose only.
# Author: Upkar Lidder (IBM)
# Additional Authors:
# <your GitHub username>
# Input:
# p, principal amount
# t, time period in years
# r, annual rate of interest
# Output:
# simple interest = p*t*r

echo "Enter the principal:"
read p
echo "Enter rate of interest per year:"
read r
echo "Enter time period in years:"
read t

# Validate numeric inputs (basic check)
if ! [[ "$p" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$r" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$t" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Error: please enter valid numeric values for p, r, and t."
  exit 1
fi

s=$(echo "$p * $t * $r / 100" | bc -l)

echo "The simple interest is:"
echo $s
