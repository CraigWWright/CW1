#!/bin/bash

echo "Running program with correct inputs"
./correctInputs.sh
echo "Running program with inputs in the wrong order"
./wrongFormat.sh
echo "Running program with wrong value inputs"
./wrongValue.sh
echo "Running program with an invalid currency"
./wrongCurrency.sh
echo "Running program with currency in uppercase"
./uppercase.sh
echo "Running with program with currency capitalised"
./capitalised.sh
echo "Running program to test calculations: 1 dollars"
./calculation1.sh
echo "Running program to test calculations: 1 pounds"
./calculation2.sh
echo "Runninng program to test calculations: 1 euros"
./calculation3.sh

