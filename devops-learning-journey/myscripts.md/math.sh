#!/bin/bash

read -p "Enter your number: " a
read -p "Enter your number: " b

echo "sum: $((a + b))"
echo "subtract: $((a - b))"
echo "multiply: $((a * b))"
echo "Quotient: $((a / b))"
echo "remainders: $((a % b))"

