#!/bin/bash
# simple-interest.sh
# Usage: ./simple-interest.sh principal rate years
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal annual_rate_percent years"
  exit 1
fi
P=$1
R=$2
T=$3
# Simple interest = (P * R * T) / 100
SI=$(awk "BEGIN { printf \"%.2f\", ($P * $R * $T) / 100 }")
echo "Principal: $P"
echo "Rate (annual %): $R"
echo "Years: $T"
echo "Simple Interest: $SI"
